How to launch extractor_flow
========================

Local computer
--------------

To run the pipeline, use the following command:

::

    # With Singularity
    $> nextflow run extractor_flow -r 1.0.0 --input input_folder -with-singularity scilus_flow_1.5.0.sif -resume

    # With Docker
    $> nextflow run extractor_flow -r 1.0.0 --input input_folder -with-docker scilus/scilus_flows:1.5.0 -resume

If you want to skip steps already processed by an anterior run, you can add `-resume` option in the command line.


CBRAIN
-------------------------------


High Performance Computer (HPC)
-------------------------------

The following example is based on the SLURM executor:

If you want to use only one node, please use the same commands presented for the
local computer. The follwing lines must be saved in ``.sh`` file (e.g. ``cmd.sh``)
to be executed with ``sbatch``.

::

    #!/bin/sh

    #SBATCH --nodes=1
    #SBATCH --cpus-per-task=32
    #SBATCH --mem=0
    #SBATCH --time=48:00:00

    nextflow -c singularity.conf run extractor_flow -r 1.0.0 --input input_folder -with-singularity singularity_name.sif -resume

To launch on multiple nodes, you must to use the MPI option that use Ignite executor.
The following example use 2 nodes with 32 threads on each nodes. The follwing lines
must be saved in ``.sh`` file (e.g. ``cmd.sh``) to be executed with ``sbatch``.

::

    #!/bin/sh

    #SBATCH --nodes=2
    #SBATCH --cpus-per-task=32
    #SBATCH --mem=0
    #SBATCH --time=48:00:00

    export NXF_CLUSTER_SEED=$(shuf -i 0-16777216 -n 1)

    srun nextflow -c singularity.conf run extractor_flow -r 1.0.0 --input input_folder -with-singularity singularity_name.sif -with-mpi -resume

To launch the pipeline on the HPC:

::

    $> sbatch cmd.sh
