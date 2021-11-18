# Pycnandra



### Installing pipeline :


<details>
  <summary>Click here to see how to install this pipeline</summary>

First, open your terminal. Then, run these two command lines :

    pwd
    /scratch_vol1/fungi

    cd -place_in_your_local_computer
    git clone https://github.com/PLStenger/Pycnandra.git

</details> 



### Running pipeline :

<details>
  
    # For run all pipeline, lunch only this command line : 
    time nohup bash 000_run_all_pipeline_in_one_script.sh &> 000_run_all_pipeline_in_one_script.out
  
    time nohup bash 00_quality_check_by_FastQC.sh &> 00_quality_check_by_FastQC.out
    >real	15m57,102s
    >user	25m7,809s
    >sys	1m18,931s
  
    time nohup bash 01_pooling_sequences.sh &> 01_pooling_sequences.out
    >real	0m2,227s
    >user	0m0,139s
    >sys	0m2,081s
  
    time nohup bash 02_trimmomatic_q30.sh &> 02_trimmomatic_q30.out
    >real	14m42,465s
    >user	112m16,534s
    >sys	4m31,750s

    time nohup bash 03_cleaned_data_quality_check_by_FastQC.sh &> 03_cleaned_data_quality_check_by_FastQC.out
    >real	14m36,768s
    >user	22m51,308s
    >sys	1m8,843s

    time nohup bash 04_qiime2_import_PE.sh &> 04_qiime2_import_PE.out
    >real    2m7,230s
    >user    2m14,750s
    >sys     0m29,133s

    time nohup bash 05_qiime2_denoise_PE.sh &> 05_qiime2_denoise_PE.out
    >
    >
    >
  
    time nohup bash 06_qiime2_tree_PE.sh &> 06_qiime2_tree_PE.out
    >real	2m22,561s
    >user	2m33,893s
    >sys	0m31,216s
  
    time nohup bash 07_qiime2_rarefaction_PE.sh &> 07_qiime2_rarefaction_PE.out
  
  
  
</details> 
