# clean all data
rm -Rf ddd
mkdir ddd
rm errors

cp molgeom.py molgeom_local.py

for MOLECULES in struct.*; do

  # parallel execution here
  (for f in $(cat $MOLECULES); do 
     python2.7 ./molgeom_local.py -f XYZ structures2/$f 2>>errors |  sed -e s/0\\.00,/0,/g  > ddd/$f.data; 
     # echo $f; 
  done) & 

done
