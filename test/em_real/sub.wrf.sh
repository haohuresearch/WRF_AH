#!/bin/bash
#SBATCH --job-name=wrf
#SBATCH --account=zhan248_1326
#SBATCH --partition=epyc-64
#SBATCH --nodes=1
#SBATCH --ntasks=24            # 修改为48个并行任务
#SBATCH --cpus-per-task=1      # 每个任务使用1个CPU核心
#SBATCH --mem=128G
#SBATCH --time=48:00:00
#SBATCH --output=log.wrf

# 使用pmi2来管理MPI通信
./wrf.exe