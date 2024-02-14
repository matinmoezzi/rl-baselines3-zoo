python train.py --algo $1 --env $2 -P --log-interval 1000 --eval-freq 100000 --save-freq 500000 --wandb-project-name mycobot-deepRL --wandb-entity matinmoezzi --track --hyperparams n_envs:200 learning_starts:10500 ${@:3}