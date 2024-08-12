#! /bin/bash
set -x
python train.py --env SquidHunt-v0 --algo $1  --track --wandb-project-name ArenaX-SquidHunt --wandb-entity matinmoezzi -P