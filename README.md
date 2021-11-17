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
  
</details> 
