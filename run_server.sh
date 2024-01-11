#! /bin/bash
set -x

nohup bash train_mycobot.sh sac MyCobotReach-Sparse-IK-v0 --device cuda:0 &
nohup bash train_mycobot.sh tqc MyCobotReach-Sparse-IK-v0 --device cuda:0 &

nohup bash train_mycobot.sh sac MyCobotReach-Sparse-delta_joint-v0 --device cuda:0 &
nohup bash train_mycobot.sh tqc MyCobotReach-Sparse-delta_joint-v0 --device cuda:0 &

nohup bash train_mycobot.sh sac MyCobotFetchReach-Sparse-IK-v0 --device cuda:1 &
nohup bash train_mycobot.sh tqc MyCobotFetchReach-Sparse-IK-v0 --device cuda:1 &

nohup bash train_mycobot.sh sac MyCobotFetchReach-Dense-IK-v0 --device cuda:1 &
nohup bash train_mycobot.sh tqc MyCobotFetchReach-Dense-IK-v0 --device cuda:1 &

nohup bash train_mycobot.sh sac MyCobotFetchReach-Dense-mocap-v0 --device cuda:2 &
nohup bash train_mycobot.sh tqc MyCobotFetchReach-Dense-mocap-v0 --device cuda:2 &
