#!/bin/bash

learning_rate="$(python3 print_learning_rate.py random -4.0 1.0)"

python3 ../copyproblem_train.py \
  --copy_delay 100 \
  --layer_type MISTLayer \
  --num_hidden_units 141 \
  --learning_rate $learning_rate
