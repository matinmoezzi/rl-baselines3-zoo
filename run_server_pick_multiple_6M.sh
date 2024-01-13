#! /bin/bash
set -x

bash train_mycobot.sh sac MyCobotPickAndPlace-Sparse-joint-v0 --device cuda:0 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-Sparse-joint-v0 --device cuda:0 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &

bash train_mycobot.sh sac MyCobotPickAndPlace-Sparse-mocap-v0 --device cuda:0 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-Sparse-mocap-v0 --device cuda:0 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &

bash train_mycobot.sh sac MyCobotPickAndPlace-RewardShaping-joint-v0 --device cuda:1 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-RewardShaping-joint-v0 --device cuda:1 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &

bash train_mycobot.sh sac MyCobotPickAndPlace-RewardShaping-mocap-v0 --device cuda:1 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-RewardShaping-mocap-v0 --device cuda:1 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-RewardShaping-mocap-v0 --device cuda:2 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-RewardShaping-mocap-v0 --device cuda:2 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-RewardShaping-joint-v0 --device cuda:2 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-RewardShaping-joint-v0 --device cuda:2 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-Sparse-joint-v0 --device cuda:3 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-Sparse-joint-v0 --device cuda:3 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-Sparse-mocap-v0 --device cuda:3 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-Sparse-mocap-v0 --device cuda:3 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &