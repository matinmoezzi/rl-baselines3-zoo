#! /bin/bash
set -x

bash train_sbx_mycobot_parallel.sh tqc MyCobotFetchReach-Sparse-mocap-v0 --n-timesteps 1_000_000 --device cuda:0 &

bash train_sbx_mycobot_parallel.sh tqc MyCobotFetchReach-Dense-mocap-v0 --n-timesteps 1_000_000 --device cuda:0 &

bash train_sbx_mycobot_parallel.sh tqc MyCobotFetchPickAndPlace-Sparse-mocap-v0 --n-timesteps 5_000_000 --device cuda:1 &

bash train_sbx_mycobot_parallel.sh tqc MyCobotFetchPickAndPlace-RewardShaping-mocap-v0 --n-timesteps 5_000_000 --device cuda:1 &

bash train_mycobot_parallel.sh tqc MyCobotFetchPickAndPlace-Sparse-mocap-v1 --n-timesteps 5_000_000 --device cuda:2 &