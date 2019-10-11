INPUT=$1

#cut -f 2- -d, $INPUT > tmp.label_features
#cut -f 2 -d, $INPUT > tmp.labels

cut -f 2- -d, $INPUT | awk -v FS="," '{a=0; printf($1); for(i=2;i<=NF;i++) if($i!=0) printf(" "i-1":"$i); print ""}'  
