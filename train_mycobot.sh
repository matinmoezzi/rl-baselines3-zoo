python train.py --algo $1 --env $2 -P --vec-env=subproc --device=cpu --log-interval 500 --eval-freq 10000 --save-freq 100000 --wandb-project-name mycobot-deepRL --wandb-entity matinmoezzi --track