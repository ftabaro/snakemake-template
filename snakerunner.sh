#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    echo "Config file is required."
    exit 1
fi

SBATCH="sbatch -J {cluster.jobname} -t {cluster.time} --ntasks={cluster.ntasks} --cpus-per-task={cluster.cpu} --mem={cluster.mem} -e {cluster.log} -o {cluster.log} --partition={cluster.partition}"

snakemake -p --reason -j 10 \
  --configfile $1 \
  --cluster "$SBATCH" \
  --cluster-config cluster-config/cluster.json \
  --latency-wait 60 \
  --use-conda \
  --use-singularity \
  --quiet

