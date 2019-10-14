# A template for Snakemake based projects

This repository represent a boilerplate project for Snakemake-based projects.

## Structure

```
.
├── cluster-config
│   └── cluster.json
├── config.yml
├── envs
│   └── test.yml
├── LICENSE
├── logs
├── README.md
├── scripts
│   └── first.R
├── Snakefile
└── snakerunner.sh

4 directories, 8 files
```

## Dependencies

* Conda
* Snakemake
* Singularity
* Slurm

## Running a pipeline

These are the very general steps on how to develop a pipeline with Snakemake

1. Edit rules in `Snakefile`
2. Edit paths in `config.yml`
3. Edit cluster configuration in `cluster-config/cluster.json`
4. Run with: `./snakerunner config.yml`
