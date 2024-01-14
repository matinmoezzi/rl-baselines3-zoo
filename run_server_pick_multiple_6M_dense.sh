#! /bin/bash
set -x

bash train_mycobot.sh sac MyCobotPickAndPlace-Dense-joint-v0 --device cuda:7 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-Dense-joint-v0 --device cuda:7 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &

bash train_mycobot.sh sac MyCobotPickAndPlace-Dense-mocap-v0 --device cuda:7 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-Dense-mocap-v0 --device cuda:7 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-Dense-mocap-v0 --device cuda:6 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-Dense-mocap-v0 --device cuda:6 --n-timesteps 6_000_000 --hyperparams gradient_steps:8 n_envs:200 learning_starts:10500 &