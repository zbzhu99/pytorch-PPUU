#!/bin/bash

rm *.err
rm *.out

for model in policy-cnn; do 
    for lrt in 0.001 0.0001; do 
        for nhidden in 100 200; do 
            for ncond in 4; do 
                sbatch submit_train_il.slurm $model $lrt $nhidden $ncond
            done
        done
    done
done
