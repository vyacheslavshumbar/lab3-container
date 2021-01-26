#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno18/lab3/data/
#SBATCH -J k-meros-singularity
#SBATCH --cpus-per-task=26
#SBATCH --mail-type=NONE
#SBATCH --mail-user=vshumbar@um.es

module load singularity

echo "Tiempos de ejecuccion empleando Singularity"
echo
echo "Tiempo de ejecuccion 13 k-meros con python"
echo
time ../singularity/python_latest.sif python ./k-mer13.py
echo
echo "Tiempo de ejecuccion 14 k-meros con python"
echo
time ../singularity/python_latest.sif python ./k-mer14.py
echo
echo "Tiempo de ejecuccion 13 k-meros con C"
echo
time ../singularity/python_latest.sif ./k-mer13
echo
echo "Tiempo de ejecuccion 14 k-meros con C"
echo
time ../singularity/python_latest.sif ./k-mer14
echo
