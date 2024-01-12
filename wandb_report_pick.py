import itertools
import wandb
import wandb.apis.reports as wr

env_version = "v0"

report = wr.Report(
    project="mycobot-deepRL",
    title=f"Pick-and-Place {env_version} Task Experiments",
    description="MyCobot Deep RL Experiments - Pick-and-Place Task - SAC, TQC",
    width="fluid"
)

controllers = ["mocap", "ik", "joint"]
rewards = ["sparse", "dense", "rewardshaping"]
envs = ["mycobotfetchpickandplace", "mycobotpickandplace"]

all_runsets = []
for controller, reward, env in itertools.product(controllers, rewards, envs):
    if controller == "joint" and env in ["mycobotfetchpickandplace"]:
        continue
    q = f"{env}-{reward}-{controller}-{env_version}"
    runset = wr.runset.Runset("matinmoezzi", "mycobot-deepRL", query=q)
    all_runsets.append(runset)

blocks = [
    wr.PanelGrid(
        panels=[
            wr.LinePlot(x="global_step", y="eval/success_rate", legend_template="${config:env}-${config:algo}"),
            wr.LinePlot(x="global_step", y="eval/mean_reward", legend_template="${config:env}-${config:algo}")],runsets=[rs]
    )
for rs in all_runsets]

report.blocks = blocks
report.save()