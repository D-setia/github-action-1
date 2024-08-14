#!/bin/sh -l

IP_GPUS = $1
IP_GPU_TYPE = $2
IP_CPU = $3
IP_MEMORY = $4
IP_MIN_SCALE = $5
IP_MAX_SCALE = $6
IP_ENV = $7

echo "Inputs: $1, $2, $3, $4, $5, $6, $7"

echo "gpus: $IP_GPUS"
echo "gpu_type: $IP_GPU_TYPE"
echo "cpu: $IP_CPU"
echo "memory: $IP_MEMORY"
echo "min_scale: $IP_MIN_SCALE"
echo "max_scale: $IP_MAX_SCALE"
echo "env: $IP_ENV"


aws eks update-kubeconfig --name divyanshu --region us-east-1       
tensorkube deploy --gpus $IP_GPUS --gpu-type $IP_GPU_TYPE --cpu $IP_CPU --memory $IP_MEMORY --min-scale $IP_MIN_SCALE --max-scale $IP_MAX_SCALE --env $IP_ENV
