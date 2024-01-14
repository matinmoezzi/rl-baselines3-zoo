#! /bin/bash
set -x

bash train_mycobot.sh sac MyCobotPickAndPlace-Dense-IK-v0 --device cuda:0 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-Dense-IK-v0 --device cuda:0 &

bash train_mycobot.sh sac MyCobotPickAndPlace-Dense-joint-v0 --device cuda:0 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-Dense-joint-v0 --device cuda:0 &

bash train_mycobot.sh sac MyCobotPickAndPlace-Dense-mocap-v0 --device cuda:1 &
bash train_mycobot.sh tqc MyCobotPickAndPlace-Dense-mocap-v0 --device cuda:1 &

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-Dense-IK-v0 --device cuda:3 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-Dense-IK-v0 --device cuda:3 &

bash train_mycobot.sh sac MyCobotFetchPickAndPlace-Dense-mocap-v0 --device cuda:3 &
bash train_mycobot.sh tqc MyCobotFetchPickAndPlace-Dense-mocap-v0 --device cuda:3 &


