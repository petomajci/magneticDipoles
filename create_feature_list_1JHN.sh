CODE=$1
NBINS=10

(echo id
echo id1
echo id2
echo molecule
echo TARGET
echo distance NH
echo charge H
echo charge N
echo min charge of N neighbors
echo max charge of N neighbors
echo mean charge of N neighbors
echo Is N cyclic
echo Number of Cyclic neighbors of N
for X in H N; do 
    for mol in H C N F O all; do 
	
	for((i=2;i<=10;i++)); do 
	    d1=$(echo "scale=2; 2 + 3.5 * ($i-2)/8" |bc)
	    d2=$(echo "scale=2; -5 + ($i-2)/8*10" |bc)
	    echo $X: G2 descriptor for $mol at distance ${d1}A; 
	    echo $X: G2b descriptor for $mol at distance ${d2}A; 
	    echo $X: G2c descriptor for $mol at distance ${d1}A; 
        done; 
	
	echo $X: G1:5A descriptor for $mol;
	echo $X: G1b:5A descriptor for $mol;
	echo $X: G1c:5A descriptor for $mol;

	for level in 1; do
  	  echo $X: Min distance-$level for $mol; 
	  echo $X: Min distanceB-$level for $mol; 
	  echo $X: Min distanceC-$level for $mol;
          echo $X: Min distanceD-$level for $mol;	
	  echo $X: Charge-$level of min distance $mol; 
#	  if [ $X == H ]; then
#	     echo $X: Min torsion-$level for $mol;
#	     echo $X: Min angle-$level for $mol;
#	  fi
	done;

     done; 
done

for mol in H C N F O all; do 
	echo N: number of neighbors of type $mol; 
done

for mol in H C N F O all; do 
	echo N: number of 2nd level neighbors of type $mol; 
done

for mol in H C N F O all; do 
	for((i=1;i<=$NBINS;i++)); do 
		echo N distace bins to neighbors of type $mol, bin nr. $i; 
	done; 
done 

#echo N min distane to neighbors X
#echo N max distance to neighbors X
#echo N mean distance to neighbors X

for mol in H C N F O all; do
        for((i=1;i<=$NBINS;i++)); do
                echo N angle bins to neighbors of type $mol, bin nr. $i;
        done;
done

for mol in H C N F O all; do
        for((i=1;i<=$NBINS;i++)); do
                echo N torsion bins to neighbors of type $mol, bin nr. $i;
        done;
done 

for X in N H; do
   for mol in H C N F O all; do
        for((i=1;i<=$NBINS;i++)); do
                echo For $X: distances to its 2nd level $mol neighbors, bin nr. $i;
        done;
   done;
done 

for mol in H C N F O all; do
        for((i=1;i<=15;i++)); do
                echo For N: charges of its $mol neighbors, bin nr. $i;
        done;
done 

#for mol in H C N F O all; do
#        for((i=1;i<=15;i++)); do
#                echo For N: charges of its 2nd level neighbors, bin nr. $i;
#        done;
#done

for X in H N; do
  for mol in H C N F O all; do
        for((i=1;i<=15;i++)); do
                echo For $X: charges of atoms $mol within 3A, bin nr. $i;
        done;
  done
done

for X in H N; do
  for mol in H C N F O all; do
        for((i=1;i<=15;i++)); do
                echo For $X: charges of atoms $mol within 5A, bin nr. $i;
        done;
  done
done

for X in H N; do
  for((i=1;i<=29;i++)); do
     echo For $X: Coulomb matrix, item $i
  done
done


) | head -n 914 > feature.list.$CODE # | head -n 910 > feature.list

sed -i 's/ /\t/g' $CODE.xxx
paste $CODE.xxx feature.list.$CODE > feature2.list
awk -v FS="\t" '{if(NR>=6 && $2!="" && $2>100) {i++; print i"\t"$0}}' feature2.list > feature3.list

awk -v FS="," '{printf("%d\n",$2)}' feature_iportance.txt > feature2_iportance.txt

paste feature3.list feature2_iportance.txt

