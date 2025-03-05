# LIONESS sparsity testing
This Nextflow pipeline measures the sensitivity of LIONESS to varying 
levels of sparsity.
It is still under development, and currently only replicates a small
part of what the
[Snakemake pipeline](https://github.com/ladislav-hovan/lioness_sparsity_snakemake)
does.


## Table of Contents
- [LIONESS sparsity testing](#lioness-sparsity-testing)
  - [Table of Contents](#table-of-contents)
  - [General Information](#general-information)
  - [Features](#features)
  - [Setup](#setup)
  - [Usage](#usage)
  - [Project Status](#project-status)
  - [Room for Improvement](#room-for-improvement)
  - [Acknowledgements](#acknowledgements)
  - [Contact](#contact)
  - [License](#license)


## General Information
This pipeline tests and summarises how the output of LIONESS changes 
when the gene expression data is modified to varying levels of sparsity. 
It is intended to automate this process fully, starting from input 
expression file, prior motif network, prior PPI (protein-protein 
interaction) network, and the settings provided in the config.yaml file.

The pipeline is implemented using Nextflow.
It uses Python scripts to perform the individual tasks.


## Features
The features already available are:
- Cleanup of expression data and prior networks


## Setup
The requirements are provided in a `requirements.txt` file.

Because the scripts are provided as a submodule, after cloning the
repository, the following commands should be run in the main module
directory:

``` bash
git submodule init
git submodule update --remote
```


## Usage
Running a Nextflow pipeline is straightforward:

``` bash
nextflow run
```

The config file is yet to be implemented.


## Project Status
The project is: _in progress_.


## Room for Improvement
Room for improvement:
- Add the config file

To do:
- Reproduce the entire existing Snakemake pipeline
- Figure out if GPUs can be used when running locally


## Acknowledgements
Many thanks to the members of the 
[Kuijjer group](https://www.kuijjerlab.org/) 
at NCMM for their feedback and support.

This README is based on a template made by 
[@flynerdpl](https://www.flynerd.pl/).


## Contact
Created by Ladislav Hovan (ladislav.hovan@ncmm.uio.no).
Feel free to contact me!


## License
This project is open source and available under the 
[GNU General Public License v3](LICENSE).