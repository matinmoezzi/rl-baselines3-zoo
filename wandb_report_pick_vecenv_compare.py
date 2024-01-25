import itertools
import wandb
import wandb.apis.reports as wr

env_version = "v0"

report = wr.Report(
    project="mycobot-deepRL",
    title=f"Pick-and-Place {env_version} Task Experiments Vectorized Env vs Non-Vectorized Env",
    description="MyCobot Deep RL Experiments - Pick-and-Place Task - SAC, TQC - Vectorized Env vs Non-Vectorized Env",
    width="fluid"
)

controllers = ["mocap", "joint"]
rewards = ["sparse", "dense"]
envs = ["mycobotfetchpickandplace", "mycobotpickandplace"]

all_runsets = []
for algo in ["sac", "tqc"]:
    for controller, reward, env in itertools.product(controllers, rewards, envs):
        if controller == "joint" and env in ["mycobotfetchpickandplace"]:
            continue
        q = f"{env}-{reward}-{controller}-{env_version}"
        runset = wr.runset.Runset("matinmoezzi", "mycobot-deepRL", query=q).set_filters_with_python_expr(f"algo == {algo}")
        all_runsets.append(runset)

blocks = [
    wr.PanelGrid(
        panels=[
            wr.LinePlot(x="global_step", y="eval/success_rate", legend_template="${config:env}-${config:algo}", smoothing_type="average", smoothing_factor=10.0, smoothing_show_original=True),
            wr.LinePlot(x="global_step", y="rollout/success_rate", legend_template="${config:env}-${config:algo}"),
            wr.LinePlot(x="global_step", y="rollout/ep_rew_mean", legend_template="${config:env}-${config:algo}"),
            ],runsets=[rs]
    )
for rs in all_runsets]

report.blocks = blocks
report.save()