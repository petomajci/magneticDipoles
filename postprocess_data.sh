#!/bin/bash

types="3JHC 2JHC 1JHC 3JHH 2JHH 3JHN 2JHN 1JHN"
types="2JHN 2JHC"
types=3JHC
types=1JHN

for tt in $types; do 
   echo $tt
  (
   #for f in $(cat random_files_order); do cat ddd/$f; done > all.data
   #grep $tt all7A_2JHx_filter1.data > data/$tt.data 
   #grep $tt all6AE-910.data > data/$tt.data
   grep $tt all7E-890.data > data/$tt.data
   #grep $tt all7A_3JHH_filter1.data > data/$tt.data
   #grep $tt all7A_3JHC_filter1.data > data/$tt.data

   # remove trailing comma
   sed -i -e s/,$//g  data/$tt.data

   # split into train and test sets 
   grep -v X data/$tt.data > data/$tt.data.train
   grep X data/$tt.data > data/$tt.data.test

   # count how many non zero values we have for each feature in train set
   awk -v FS="," '{for(i=1;i<=NF;i++) if($i!=0) a[i]++;} END{ for(i=1;i<=NF;i++) print i" "a[i];}' data/$tt.data.train > $tt.xxx

   # filter only features that are !=0 at least in 100 train data points
   # to avoid overfitting
   myFeatures=$(awk '{if($2!="" && $2>100 && ($1!=2 && $1!=3 && $1!=4)) printf("%s,",$1); }' $tt.xxx | sed -e s/,$//g )
   cut -f $myFeatures -d, data/$tt.data.train > aaa.$tt; mv aaa.$tt data/$tt.data.train
   cut -f $myFeatures -d, data/$tt.data.test > aaa.$tt; mv aaa.$tt data/$tt.data.test

   #rm $tt.xxx
   rm data/$tt.data

   # convert to svmlight 
   ./csv2svmlight.sh data/$tt.data.train > data2/$tt.data.train
   ./csv2svmlight.sh data/$tt.data.test > data2/$tt.data.test
   
   # get labels
   #cut -f 1 -d" " data2/$tt.data.test > labels/$tt.labels;


   echo $tt is done) &
done
