.. _profiles:

Profiles
========

To select one or multiple profiles, please use the ``-profile`` option. For example:

::

    $> nextflow run extractor_flow -r 1.0.0 --input input_folder -profile macos,fully_reproducible -with-singularity singularity_name.sif -resume

Profiles available
------------------

``macos``
    When this profile is used, extractor_flow will modify a parameter (scratch) for MacOS users.

``fully_reproducible``
    When this profile is used, all the parameters will be set to have 100% reproducible results.
    This profile consist to set multi-thread parameters to be fully reproducible.

``extract_bundles``
    When this profile is used, it will extract bundles.
