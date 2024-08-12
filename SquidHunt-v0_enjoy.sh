#! /bin/bash
set -x
python enjoy.py --env SquidHunt-v0 --algo $1 -f logs/ --exp-id 1 -n 10000 --load-best