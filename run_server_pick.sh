#! /bin/bash
set -x

bash train_mycobot.sh sac MyCobotPickAndPlace-Sparse-IK-v0 --device cuda:0 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-Sparse-IK-v0 --device cuda:0 &

bash train_mycobot.sh sac MyCobotPickAndPlace-Sparse-joint-v0 --device cuda:0 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-Sparse-joint-v0 --device cuda:0 &

bash train_mycobot.sh sac MyCobotPickAndPlace-Sparse-mocap-v0 --device cuda:1 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-Sparse-mocap-v0 --device cuda:1 &

bash train_mycobot.sh sac MyCobotPickAndPlace-RewardShaping-IK-v0 --device cuda:1 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-RewardShaping-IK-v0 --device cuda:1 &

bash train_mycobot.sh sac MyCobotPickAndPlace-RewardShaping-joint-v0 --device cuda:2 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-RewardShaping-joint-v0 --device cuda:2 &

bash train_mycobot.sh sac MyCobotPickAndPlace-RewardShaping-mocap-v0 --device cuda:2 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-RewardShaping-mocap-v0 --device cuda:2 &

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-Sparse-IK-v0 --device cuda:3 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-Sparse-IK-v0 --device cuda:3 &

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-RewardShaping-IK-v0 --device cuda:3 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-RewardShaping-IK-v0 --device cuda:3 &

