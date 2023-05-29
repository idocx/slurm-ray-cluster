#!/bin/bash

jobid1=$(sbatch --parsable submit-ray-cluster.sbatch)
jobid2=$(sbatch --parsable --dependency=afterany:$jobid1 submit-ray-cluster.sbatch)
jobid3=$(sbatch --parsable --dependency=afterany:$jobid2 submit-ray-cluster.sbatch)
jobid4=$(sbatch --parsable --dependency=afterany:$jobid3 submit-ray-cluster.sbatch)
jobid5=$(sbatch --parsable --dependency=afterany:$jobid4 submit-ray-cluster.sbatch)
jobid6=$(sbatch --parsable --dependency=afterany:$jobid5 submit-ray-cluster.sbatch)
jobid7=$(sbatch --parsable --dependency=afterany:$jobid6 submit-ray-cluster.sbatch)
jobid8=$(sbatch --parsable --dependency=afterany:$jobid7 submit-ray-cluster.sbatch)
jobid9=$(sbatch --parsable --dependency=afterany:$jobid8 submit-ray-cluster.sbatch)
jobid10=$(sbatch --parsable --dependency=afterany:$jobid9 submit-ray-cluster.sbatch)