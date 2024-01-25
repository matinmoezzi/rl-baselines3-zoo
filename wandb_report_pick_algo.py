import itertools
import wandb
import wandb.apis.reports as wr

env_version = "v0"

report = wr.Report(
    project="mycobot-deepRL",
    title=f"Pick-and-Place {env_version} Task Experiments Controller Comparison",
    description=f"MyCobot Deep RL Experiments - Pick-and-Place {env_version} Task - SAC, TQC",
    width="fluid"
)

rewards = ["sparse", "dense", "rewardshaping"]
envs = ["mycobotfetchpickandplace", "mycobotpickandplace"]

all_runsets = []
for reward in rewards:
    for env in envs:
        for algo in ["sac", "tqc"]:
            q = f"{env}-{reward}"
            runset = wr.runset.Runset("matinmoezzi", "mycobot-deepRL", query=q).set_filters_with_python_expr(f"algo == {algo} and n_timesteps == -1")
            all_runsets.append(runset)

blocks = [
    wr.PanelGrid(panels=[
            # wr.LinePlot(x="global_step", y="eval/success_rate", legend_template="${config:env}-${config:algo}"),
            # wr.LinePlot(x="global_step", y="eval/mean_reward", legend_template="${config:env}-${config:algo}"),
            wr.LinePlot(x="global_step", y="rollout/ep_rew_mean", legend_template="${config:env}-${config:algo}")],runsets=[rs]) for rs in all_runsets]

report.blocks = blocks
report.save()