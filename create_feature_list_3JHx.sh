CODE=$1
NBINS=10

(echo id
echo id1
echo id2
echo molecule
echo TARGET
echo X=H
echo X=C
echo X=N
echo X=F
echo X=O
echo Y=H
echo Y=C
echo Y=N
echo Y=F
echo Y=O
echo distance HX
echo distance XY
echo distance YC
echo distance HY
echo distance CX
echo distance HC
echo charge H
echo charge C
echo charge X
echo charge Y
echo angle HXY
echo angle XYC
echo "|tors (HXYC)|"

for TT in C X Y; do
  for mol in H C N F O all; do 
        echo $TT: number of neighbors of type $mol; 
  done
done

for TT in X Y C; do
    for mol in H C N F O all; do 
        for((i=1;i<=$NBINS;i++)); do 
                echo X: distace bins to neighbors of type $mol, bin nr. $i; 
        done; 
    done
done

for angle in HX XY YC; do
    for mol in H C N F O all; do 
        for((i=1;i<=$NBINS;i++)); do 
                echo angle $angle,$mol bin nr. $i; 
        done; 
    done
done 

for torsion in XYC HXY CYX; do
    for mol in H C N F O all; do
        for((i=1;i<=$NBINS;i++)); do
                echo torsion $torsion,$mol bin nr. $i;
        done;
    done
done

for TT in C X Y; do
  for type in min max mean; do
    echo $type charge of $TT neighbors
  done
done

for TT in C X Y; do
  echo Is $TT cyclic
  echo Number of Cyclic neighbors of $TT
done


for X in H C X Y; do 
    for mol in H C N F O all; do 
	
	for((i=2;i<=10;i++)); do 
	    d2=$(echo "scale=2; -5 + ($i-2)/8*10" |bc)
	    echo $X: G2 descriptor for $mol at distance ${i}A; 
	    echo $X: G2b descriptor for $mol at distance ${d2}A; 
	    echo $X: G2c descriptor for $mol at distance ${i}A; 
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

for distance in 3A 5A; do
 for X in H C X Y; do
  for mol in H C N F O all; do
        for((i=1;i<=15;i++)); do
                echo For $X: charges of atoms $mol within $distance, bin nr. $i;
        done;
  done
 done
done

for TT in H C X Y; do
    for mol in H C N F O all; do 
        for((i=1;i<=$NBINS;i++)); do 
                echo $TT: distace bins to 2nd level neighbors of type $mol, bin nr. $i; 
        done; 
    done
done 

#for TT in C X Y; do
#  for mol in H C N F O all; do
#        for((i=1;i<=15;i++)); do
#                echo For $TT: charges of its $mol neighbors, bin nr. $i;
#        done;
#  done
#done



) > feature.list.$CODE
# | head -n 910 > feature.list

exit


sed -i 's/ /\t/g' $CODE.xxx
paste $CODE.xxx feature.list.$CODE > feature2.list
awk -v FS="\t" '{if(NR>=6 && $2!="" && $2>100) {i++; print i"\t"$0}}' feature2.list > feature3.list

awk -v FS="," '{printf("%d\n",$2)}' feature_iportance.txt > feature2_iportance.txt

paste feature3.list feature2_iportance.txt

