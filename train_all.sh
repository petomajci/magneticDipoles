TODO=$(ls data | cut -f 1 -d"." | uniq)
TODO="1JHC 1JHN 2JHC 2JHH 2JHN 3JHC 3JHH 3JHN"
TODO="2JHC 2JHH 2JHN 3JHC 3JHH 3JHN"

date; for f in $TODO; do python train.py $f; done >> training_output
