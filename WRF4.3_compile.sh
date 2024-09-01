#!/bin/bash
#SBATCH --job-name=wrfcompile
#SBATCH --account=zhan248_1326
#SBATCH --partition=epyc-64
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=64G
#SBATCH --time=4:00:00
#SBATCH --output=compile.wrf

source /project/zhan248_1326/shared_resources/modules/start.wrf.sh

ulimit -s unlimited

time srun --mpi=pmix_v2 -n $SLURM_NTASKS ./compile em_real >& log.compile 