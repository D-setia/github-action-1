#!/bin/sh -l

aws eks update-kubeconfig --name tensorkube --region us-east-1   
if [ -n "$7" ]; then
    tensorkube deploy --gpus $1 --gpu-type $2 --cpu $3 --memory $4 --min-scale $5 --max-scale $6 --env $7
else
    tensorkube deploy --gpus $1 --gpu-type $2 --cpu $3 --memory $4 --min-scale $5 --max-scale $6
fi
