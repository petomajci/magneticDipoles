PREDDIR=$1

echo id,scalar_coupling_constant
for f in $(ls TESTids/); do 
   paste -d"," TESTids/$f $PREDDIR/$f; 
done | sort -n --field-separator=',' --key=1,1 
