#! /bin/bash
set -x

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-Dense-mocap-v1 --device cuda:4  --hyperparams gradient_steps:4 n_envs:100 learning_starts:10000 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-Dense-mocap-v1 --device cuda:5  --hyperparams gradient_steps:4 n_envs:100 learning_starts:10000 &

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-Sparse-mocap-v1 --device cuda:6  --hyperparams gradient_steps:4 n_envs:100 learning_starts:10000 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-Sparse-mocap-v1 --device cuda:7  --hyperparams gradient_steps:4 n_envs:100 learning_starts:10000 &