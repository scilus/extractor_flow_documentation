Options
=======

To display the options of extractor_flow, please use
``nextflow run extractor_flow -r 1.0.0 --help``.

Optional list
------------

``--output_dir PATH`` (default: ./results)
    Directory where to write the final results.

``--run_bet BOOL`` (default: False)
    Run bet if your t1s are not brain extracted.

``--orig BOOL`` (default: False)
    Extract all trk in diffusion space (if t1 has been provided).

``--keep_intermediate_steps BOOL``  (default: False)
    Keep intermediate steps (false). MUST be used if you need to debug.

``--quick_registration BOOL`` (default: False)
    If set, will choose antsRegistrationSyNQuick.sh instead of antsRegistrationSyN.sh.

``--processes_bet_register_t1 NUMBER`` (default: 4)
    Number of processes for T1 brain extraction task.

``--processes_major_filtering NUMBER``  (default: 4)
    Number of processes for the major filtering task (4).

``--processes NUMBER``  (default: 4)   
    The number of parallel processes to launch. Only affects the local scheduler.