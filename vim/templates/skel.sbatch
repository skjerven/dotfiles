#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --time=00:10:00
#SBATCH --partition=debugq
#SBATCH --account=pawsey0001
#SBATCH --export=NONE

module swap PrgEnv-cray PrgEnv-intel

srun --export=ALL -n 24 -N 1 foo.x
