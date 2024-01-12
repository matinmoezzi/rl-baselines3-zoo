import itertools
import wandb
import wandb.apis.reports as wr

env_version = "v0"

report = wr.Report(
    project="mycobot-deepRL",
    title=f"Reach {env_version} Task Experiments - All",
    description=f"MyCobot Deep RL Experiments - Reach {env_version} Task - All",
    width="fluid"
)

sac_runset = wr.runset.Runset("matinmoezzi", "mycobot-deepRL", query="reach").set_filters_with_python_expr(f"algo == sac")
tqc_runset = wr.runset.Runset("matinmoezzi", "mycobot-deepRL", query="reach").set_filters_with_python_expr(f"algo == tqc")

blocks = [
    wr.PanelGrid(panels=[
            wr.LinePlot(x="global_step", y="eval/success_rate", legend_template="${config:env}-${config:algo}", max_runs_to_show=50, smoothing_factor=10.0),
            wr.LinePlot(x="global_step", y="eval/mean_reward", legend_template="${config:env}-${config:algo}", max_runs_to_show=50, smoothing_factor=10.0),
            wr.LinePlot(x="global_step", y="rollout/ep_rew_mean", legend_template="${config:env}-${config:algo}", max_runs_to_show=50, smoothing_factor=10.0)],runsets=[sac_runset, tqc_runset])]

report.blocks = blocks
report.save()