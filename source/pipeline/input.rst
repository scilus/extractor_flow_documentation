Input structure
===============

Here is the structure needed as input for Extractor_flow.

The input root parameter is called using ``--input`` and requires the following file structure:

::

    [root]
    ├── S1
    │   ├── *.trk
    │   └── _t1.nii.gz  (optional)
    └── S2
    │   ├── *trk.gz
    │   └── _t1.nii.gz  (optional)

The `input` folder must contains subjects folders (e.g. `S1`, `S2`,...). Each subject folder contains the required images:

    * ``*.trk`` is the tractogram.
    * ``*_t1.nii.gz`` is the T1 weighted image.
