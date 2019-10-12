singularity: "docker://continuumio/miniconda3:4.7.10"

rule all:
    input: config["result"]

rule compute_result:
    output: config["result"]
    conda: "envs/test.yml"
    script:
        "scripts/first.R"

