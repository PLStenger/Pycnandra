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

  
</details> 
