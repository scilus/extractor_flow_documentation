Fast Installation
=================

Easy install method
-------------------

Enter this command in your terminal (it downloads the container and Extractor_flow code in the current directory - Make sure nextflow is already installed before running this command):
::

    curl -s https://Extractor_flow-documentation.readthedocs.io/en/1.0.0/install.sh | bash


Detailed Installation
=====================

Extractor_flow pipeline
-------------------

Release
#######

Download Extractor_flow pipeline:

::

    $> nextflow pull scilus/extractor_flow

For developers
##############

Clone Extractor_flow pipeline repository:

::

    # Clone with HTTPS
    $> git clone https://github.com/scilus/extractor_flow.git

    # Clone with SSH
    $> git clone git@github.com:scilus/extractor_flow.git

As a developer you will have to run Extractor_flow using this command:

::

  nextflow run extractor_flow/main.nf --help

.. _singularity-Extractor_flow:

Singularity for Extractor_flow
--------------------------

Release
#######

Download the last release of the Singularity container for Extractor_flow:

::

    $> wget https://scil.usherbrooke.ca/containers/scilus_flows_1.5.0.sif

Or if you have sudo privileges

::

    $> sudo singularity build scilus_flows_1.5.0.sif docker://scilus/scilus:1.4.2

For developers
##############

Clone the singularity repository for Extractor_flow pipeline:

::

    # Clone with HTTPS
    $> git clone https://github.com/scilus/containers-scilus.git

    # Clone with SSH
    $> git clone git@github.com:scilus/containers-scilus.git

Then, you can build the singularity image:

::

    $> singularity build scilus_flows_1.5.0.sif singularity_scilus.def

.. _docker-Extractor_flow:

Docker for Extractor_flow
---------------------

First, change the number of CPUs and RAM (recommended: 8 CPUs and 16Gb of RAM) in
Docker (Preferences -> Advanced) and click on Apply & Restart.

Download the last release of the Docker container for Extractor_flow:

::

    $> docker pull scilus/scilus:1.4.2

Please see :ref:`profiles` section to use `macos` profile.
