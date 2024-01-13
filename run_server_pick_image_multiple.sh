#! /bin/bash
set -x

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-Dense-mocap-v1 --device cuda:0  --hyperparams gradient_steps:1 n_envs:100 learning_starts:10000 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-Dense-mocap-v1 --device cuda:0  --hyperparams gradient_steps:1 n_envs:100 learning_starts:10000 &

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-Sparse-mocap-v1 --device cuda:1  --hyperparams gradient_steps:1 n_envs:100 learning_starts:10000 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-Sparse-mocap-v1 --device cuda:1  --hyperparams gradient_steps:1 n_envs:100 learning_starts:10000 &