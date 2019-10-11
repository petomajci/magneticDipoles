v0i prepare_data.sh 
vi ~/.bash_history 
vi split
man split
split -l 16347 -d all.structures struct.
ls -ltr
vi prepare_data.sh 
vi struct.*
vi prepare_data.sh 
./prepare_data.sh 
ps
ls ddd | wc -l
ls ddd | wc -l
man shuf
ls /dev/zero 
man shuf
vi random_shuffle_files.sh
chmod +x random_shuffle_files.sh 
ls data | ./random_shuffle_files.sh 10
ls data | ./random_shuffle_files.sh 10 | wc -l
./random_shuffle_files.sh 10 | less
vi random_shuffle_files.sh
man shuf 
vi random_shuffle_files.sh
ls data | ./random_shuffle_files.sh 10 | less
vi random_shuffle_files.sh
ls data | ./random_shuffle_files.sh 10 | less
./random_shuffle_files.sh 10 1 2 3 4
vi random_shuffle_files.sh
vi prepare_data.sh 
vi postprocess_data.sh 
vi ~/.bash_history 
ls ddd | wc -l
vi random_shuffle_files.sh
rm random_shuffle_files.sh 
ls ddd/ | wc -l
ls ddd/ | shuf > random_files_order
less random_files_order 
vi ~/.bash_history 
top
vi postprocess_data.sh 
ls results/
ls oof/
ls predictions/
ls -lSrh
rm -Rf mycache/* tmp/*
ls ..
vi ../examples.desktop 
for f in $(cat random_files_order); do cat ddd/$f; done > all.data
ll -h all.data 
vi train.py 
vi ~/.bash_history 
python ./train.py 2JHN
vi ~/.bash_history 
ls -ltr
vi postprocess_data.sh 
./postprocess_data.sh 
vi postprocess_data.sh 
./postprocess_data.sh 
ps
vi postprocess_data.sh 
ls -ltr data
ls -ltr
rm 2JHN.data* data/2JHN.data
vi ./postprocess_data.sh 
./postprocess_data.sh 
vi csv2svmlight.sh 
ls -ltr
ls -ltr data
less 2JHN.data.test
less data/2JHN.data.test
./csv2svmlight.sh data/2JHN.data.test > data2/2JHN.data.test 
vi ~/.bash_history 
./csv2svmlight.sh data/2JHN.data.train > data2/2JHN.data.train 
python ./train.py 2JHN
rm -Rf tmp/* mycache/*
python ./train.py 2JHN
vi data2/2JHN.data.test 
rm -Rf tmp/* mycache/*
vi prepare_data.sh 
vi postprocess_data.sh 
./postprocess_data.sh 
python ./train.py 2JHN
vi ~/.bash_history 
cut -f 1 -d" " data2/2JHN.data.train | less
cut -f 1 -d" " data2/2JHN.data.train > labels/2JHN.data.train.labels 
ps
ls -ltr data
vi ~/.bash_history 
for f in $(ls data); do (./csv2svmlight.sh data/$f > data2/$f & ); done
vi ~/.bash_history 
ps
vi postprocess_data.sh 
vi ~/.bash_history 
ps
ps
ls -ltr labels/
ls -ltr data2/
for f in $(ls data2/ | grep train); do cut -f 1 -d" " data2/$f > labels/$f.labels;  echo $f; done
vi data2/*test
ls -ltr data2/
ls -ltrh data2/
ls
ll all*
grep -P "^4660," all.data 
rm all1.data 
ls
rm 2JHN.wrong 
ls -ltr
vi postprocess_data.sh 
vi ~/.bash_history 
rm -Rf tmp/* mycache/*
vi ~/.bash_history 
less oof/2JHN.data_oof.txt 
vi predictions/2JHN.data_prediction.txt 
ls -ltr TESTids/
vi ~/.bash_history 
cut -f 1 -d, data/2JHN.data.test > TESTids/2JHN.data_prediction.txt
vi generateSubmission.sh 
mkdir results/1b
cp -R results/1/predictions/ results/1b/
cp predictions/2JHN.data_prediction.txt results/1b/predictions/
vi generateSubmission.sh 
./generateSubmission.sh results/1b/predictions/ | less
./generateSubmission.sh results/1b/predictions/ > submission1b.txt 
diff submission1.txt submission1b.txt | less
vi evaluate.R 
vi notes.txt 
ls -ltr ~/Downloads/
mv ~/Downloads/dsgdb9nsd.xyz.tar.bz2 .
mkdir QM9
cd QM9/
mv ../dsgdb9nsd.xyz.tar.bz2 .
ls
taz xjf dsgdb9nsd.xyz.tar.bz2 
tar xjf dsgdb9nsd.xyz.tar.bz2 
ls
lw | wc -l
ls | wc -l
ll dsgdb9nsd_107106.xyz
less dsgdb9nsd_107106.xyz
vi dsgdb9nsd_107106.xyz
date; for f in $(ls data | cut -f 1 -d"." | uniq); do python train.py $f; done > training_output
jupyter notebook
python3
pycharm-community 
cd kaggle/
ls -ltr
vi training_output 
vi train.py 
rm -Rf mycache/* tmp/*
ls oof/
vi training_output
ls -ltr oof/
ls -ltr results/1/oof/
wc -l data/*train
vi evaluate.R 
Rscript evaluate.R 
vi evaluate.R 
Rscript evaluate.R 
cat notes.txt | grep "[1]"
vi data2/1JHC.data.train 
vi train.py 
top
ls
ls tmp
ls /mnt/scratch/
vi ~/.bash_history 
ls /mnt/scratch/
ls -ltr oof/
vi training_output 
top
ls -ltr oof/
Rscript evaluate.R 
ls -ltr oof/
ls -ltr results/1/oof/
vi training_output 
date; for f in $(ls data | cut -f 1 -d"." | uniq); do python train.py $f; done > training_output
vi notes.txt 
vi generateSubmission.sh 
./generateSubmission.sh predictions/ > submission3.txt 
ls -ltr
wc -l submission*
head submission3.txt 
meld submission1b.txt submission3.txt 
ls -ltr labels/
./generateSubmission.sh results/1b/predictions/ > submission1x.txt 
meld submission1b.txt submission1x.txt 
vi ~/.bash_history 
mv labels/ old_labels
mkdir labels
vi ~/.bash_history 
for f in $(ls data2/ | grep train); do cut -f 1 -d" " data2/$f > labels/$f.labels;  echo $f; done
./generateSubmission.sh predictions/ > submission3.txt 
meld submission1b.txt submission3.txt 
ls -ltr data2/
wc -l labels/*
wc -l TESTids/
wc -l TESTids/*
ls -ltr TESTids/
mv TESTids/ old_TESTids/
vi generateSubmission.sh 
vi ~/.bash_history 
for f in $(ls data | grep test | cut -f 1 -d"."); do cut -f 1 -d, data/$f.data.test > TESTids/$f.data_prediction.txt; echo $f; done
mkdir TESTids
for f in $(ls data | grep test | cut -f 1 -d"."); do cut -f 1 -d, data/$f.data.test > TESTids/$f.data_prediction.txt; echo $f; done
./generateSubmission.sh predictions/ > submission3.txt 
mv ~/Downloads/predicting-mulliken-charges-with-acsf-descriptors.ipynb .
which python
which pip
which pip3
pip install ase.visualize
vi ~/.bash_history 
pip install --upgrade --user ase
which pip
top
ls -ltr ~/Downloads/
ls input/
ls -ltr oof/
ls results/
mkdir results/3
mv oof/ predictions/ training_output results/3/
mkdir oof predictions
vi train_all.sh 
top
python train.py 2JHH
cp train.py train_test.py
vi train_test.py 
ls -ltr results/3/oof/
vi results/3/training_output 
ls -ltr results/3/oof/
python train_test.py 1JHC
python train_test.py 1JHN
vi notes.txt 
vi results/3/training_output 
ls -ltr results/3/oof/
python train.py 1JHN
ls -ltr oof/
ls -ltr predictions/
head predictions/1JHN.data_prediction.txt
head results/3/predictions/1JHN.data_prediction.txt
rm -Rf tmp/* mycache/*
python train.py 1JHN
vi results/3/training_output 
cp train.py results/3/
vi results/3/training_output 
rm -Rf tmp/* mycache/*
python train_test.py 2JHH
rm -Rf tmp/* mycache/*
python train.py 2JHH
python train_test.py 2JHH
vi train_all.sh 
ls oof/
rm -Rf oof/* predictions/* tmp/* mycache/*
ll train_all.sh 
chmod +x train_all.sh 
vi train_all.sh 
ls -ltr
vi results/3/training_output 
ls predicti
ls predictions/
ls -ltr results/3/predictions/
ls predictions/
ll training_output 
ls predictions/
ll training_output 
ls predictions/
ls -ltra
top
cd ../
cd kaggle/
vi training_output 
ls predictions/
vi results/3/training_output 
vi ~/.bash_history 
vi training_output 
vi results/3/training_output 
./train_all.sh 
ps
ls -ltr training_output 
mkdir results/4
cp -R  predictions/ training_output train.py results/4
vi training_output 
vi results/4/training_output 
vi results/3/training_output 
python train.py 1JHC
vi results/4/training_output 
ls results/4/predictions/
ls results/3/predictions/
ls predictions/
ls -ltr predictions/
cp results/3/predictions/* results/4/predictions/
cp predictions/* results/4/predictions/
vi prepare_data.sh 
./generateSubmission.sh results/4/predictions/ > submission4.txt
head submission3.txt 
head submission4.txt 
meld submission3.txt submission4.txt 
gzip submission4.txt 
ls predictions/
vi train_all.sh 
ls data | cut -f 1 -d"." | uniq
vi train_all.sh 
vi training_output 
vi train_all.sh 
ls -ltr predictions/
top
exit
top
vi training_output 
ls -ltr predictions/
ls -ltr results/4/predictions/
ls -ltr results/3/predictions/
ls -ltr predictions/
top
ls -ltr predictions/
vi training_output 
vi results/3/training_output 
vi results/3/training_output 
cd ../EC_94/
ls
mkdir myCode.R
rm myCode.R/
rmdir myCode.R/
vi myCode.R/
ls
vi myCode.R
top
cd ..
mkdir tmp
cd tmp/
vi aaa
vi bbb
diff aaa bbb
./train_all.sh 
diff aaa bbb | less
cd ..
rm -Rf tmp/
ls -ltr
cd EC_94/
ls
vi newCode.R
ls -ltr
vi newCode.R
ls -ltr
evince PCA_plot.pdf 
ll -h
cd ../kaggle/
ls -ltr
./generateSubmission.sh predictions/ > submission4n.txt
mv submission4n.txt submission4b.txt
head submission4b.txt submission3.txt 
exit
vi evaluate.R 
Rscript evaluate.R 
ls results/
mkdir results/4b
man cp
cp -p predictions/ training_output train.py results/4b/
cp -R -p predictions/ training_output train.py results/4b/
ll results/4b/predictions/
ls -ltr
mv ~/Downloads/data.covs.pickle .
less data.covs.pickle 
which python
ll /home/pmajek/anaconda3/bin/python
ls -ltr
cd QM9/
ls -ltr
rm dsgdb9nsd.xyz.tar.bz2
vi dsgdb9nsd_133859.xyz
vi dsgdb9nsd_000001.xyz
vi dsgdb9nsd_000002.xyz
vi dsgdb9nsd_000020.xyz
grep -P "^O" dsgdb9nsd_000.000.xyz | less
grep -P "^O" dsgdb9nsd_000\.000.xyz | less
grep -P "^O" dsgdb9nsd_000?000.xyz | less
grep -P "^O" dsgdb9nsd_000000?.xyz | less
ls dsgdb9nsd_000000?.xyz
ls dsgdb9nsd_000000..xyz
ls dsgdb9nsd_000000+.xyz
ls dsgdb9nsd_000000*.xyz
ls dsgdb9nsd_0000001.xyz
ls dsgdb9nsd_000001.xyz
ls dsgdb9nsd_00000?.xyz
grep -P "^O" dsgdb9nsd_000?00.xyz | less
grep -P "^O " dsgdb9nsd_000?00.xyz | less
grep -P "^O\t" dsgdb9nsd_000?00.xyz | less
ls data
cd ..
ls data
for f in $(ls data | grep test); do echo -n $f" "; head -n 1 data/$f | awk -v FS="," '{print NF}'; done
vi notes.txt 
vi molgeom.py 
grep -P "^H" dsgdb9nsd_000.000.xyz | less
grep -P "^H" dsgdb9nsd_000.00.xyz | less
grep -P "^H" QM9/dsgdb9nsd_000.00.xyz | less
grep -P "^H" QM9/dsgdb9nsd_000.000.xyz | less
grep -P "^O\t" QM9/dsgdb9nsd_000?00.xyz | less
grep -P "^H\t" QM9/dsgdb9nsd_000?00.xyz | less
ls structures/dsgdb9nsd_000100.xyz
less structures/dsgdb9nsd_000100.xyz
cat structures/dsgdb9nsd_000100.xyz
cat QM9/dsgdb9nsd_000100.xyz
cat structures/dsgdb9nsd_000100.xyz
cat QM9/dsgdb9nsd_000100.xyz
vi prepare_data.sh 
python2.7 ./molgeom.py -f XYZ QM9/dsgdb9nsd_000100.xyz | less
less QM9/dsgdb9nsd_000100.xyz
vi QM9/dsgdb9nsd_000100.xyz
vim QM9/dsgdb9nsd_000100.xyz
python2.7 ./molgeom.py -f XYZ QM9/dsgdb9nsd_000100.xyz | less
cp structures/dsgdb9nsd_000100.xyz.train QM9
python2.7 ./molgeom.py -f XYZ QM9/dsgdb9nsd_000100.xyz | less
python2.7 ./molgeom.py -f XYZ QM9/dsgdb9nsd_000100.xyz | grep 1JHC
vim QM9/dsgdb9nsd_000100.xyz
python2.7 ./molgeom.py -f XYZ QM9/dsgdb9nsd_000100.xyz > xxx
vi QM9/dsgdb9nsd_000100.xyz
python2.7 ./molgeom.py -f XYZ QM9/dsgdb9nsd_000100.xyz > xxx
vi xxx
vi QM9/dsgdb9nsd_000100.xyz
vi QM9/dsgdb9nsd_000101.xyz
vi notes.txt 
top
for f in QM9/*xyz; do sed -i -e 's/\t-/ -/g' -e 's/\t / /g' $f; done
mkdir structures2
for f in structures/*train; do  mv $f structures2
for f in structures/*train; do  mv $f structures2; done
ls structures | wc -l
ls QM9 | wc -l
ls structures2/ | wc -l
for f in $(ls structures); do mv QM9/$f structures2; done
ls QM9/ | wc -l
rm QM9/*train
ls structures2 | wc -l
ls structures2/ | head
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000100.xyz > xxx
vi xxx
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000100.xyz > xxx
vi xxx
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000100.xyz > xxx
vi xxx
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000100.xyz > xxx
vi xxx
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000100.xyz 
vi prepare_data.sh 
mv ddd/ ddd_orig
vi prepare_data.sh 
./prepare_data.sh 
wc -l ddd | wc -l
ls ddd | wc -l
for f in structures2/* grep "8.162*^-6" $f; done
for f in structures2/*; do  grep "8.162*^-6" $f; done
for f in structures2/*; do  grep "^" $f; done
man grep
for f in structures2/*; do  cat  $f; done | less
ps
for f in structures2/*xyz; do  cat  $f; done | less
ps
ps
for f in structures2/*xyz; do  cat  $f; done | less
vi prepare_data.sh 
rm -Rf ddd
ps
ps -a | grep bash
ps -al | grep bash
ps -eal | grep bash
kill 20719
kill 20720
kill 20722
kill 20724
kill 20726
kill 20728
kill 20730
kill 20731
ps -eal | grep bash
ps
vi prepare_data.sh 
./prepare_data.sh | less
vi prepare_data.sh 
./prepare_data.sh | less
vi prepare_data.sh 
./prepare_data.sh | less
vi structures2/dsgdb9nsd_000212.xyz
vi prepare_data.sh 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000212.xyz
vi prepare_data.sh 
vi structures2/dsgdb9nsd_000212.xyz
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000212.xyz
vi structures2/dsgdb9nsd_000212.xyz
vi structures/dsgdb9nsd_000212.xyz
./prepare_data.sh | less
vi structures2/dsgdb9nsd_001460.xyz
sed -e 's/\*\^/e/g' structures2/dsgdb9nsd_001460.xyz | less
for f in structures2/*xyz; do sed -i -e 's/\*\^/e/g' $f; done
vi prepare_data.sh 
./prepare_data.sh 
date; ls ddd | wc -l
ll ddd | head
vi structures2/dsgdb9nsd_000002.xyz
vi postprocess_data.sh 
vi random_files_order 
vi postprocess_data.sh 
vi prepare_data.sh 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000002.xyz
for f in $(cat random_files_order); do cat ddd/$f; done > all2.data
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000002.xyz | less
wc -l all2.data 
vi random_files_order 
ls ddd | head
ll ddd | head
ll ddd | less
wc -l ddd/dsgdb9nsd_000020.xyz.data
vi ddd/dsgdb9nsd_000020.xyz.data
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
less structures2/dsgdb9nsd_000020.xyz.train 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
vi prepare_data.sh 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
vi prepare_data.sh 
./prepare_data.sh 
ps
ls ddd | wc -l
ll ddd | less
ls ddd | wc -l
cp molgeom.py molgeom2.py
ls ddd | wc -l
awk -v FS="," '{ print NF }' ddd/dsgdb9nsd_000020.xyz.data | head
ls
awk -v FS="," '{ print NF }' ddd_orig/dsgdb9nsd_000020.xyz.data | less
grep 1JHN ddd_orig/dsgdb9nsd_000020.xyz.data | awk -v FS="," '{ print NF }' | less
diff molgeom*.py
rm molgeom2.py 
for f in $(cat random_files_order); do cat ddd/$f; done > all2.data
vi postprocess_data.sh 
mv data/1JHN.data.* .
vi postprocess_data.sh 
./postprocess_data.sh 
ls -ltr data
ls -ltr
vi ~/.bash_history 
ls -ltr data2
vi data2/1JHN.data.test
vi train_all.sh 
top
vi training_output 
diff train.py results/4/
python train.py 1JHN
ls -ltr results/4
vi train_all.sh 
vi training_output 
ls -ltr results/4/predictions/
ls -ltr results/4b/predictions/
vi training_output 
python train.py 2JHH
vi train_all.sh 
vi notes.txt 
vi train.py 
vi training_output 
vi train.py 
vi training_output 
ls -ltr results/4b/predictions/
python train.py 1JHN
vi training_output 
rm tmp/* mycache/*
rm -Rf tmp/* mycache/*
ls -ltr predictions/
./generateSubmission.sh > submission4c.txt
./generateSubmission.sh predictions/ > submission4c.txt
wc -l submission4*
vi prepare_data.sh 
vi training_output 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
vi prepare_data.sh 
./prepare_data.sh 
ls ddd | wc -l
vi errors 
vi training_output_with_charges
ls ddd | wc -l
vi notes.txt 
ls ddd | wc -l
vi notes.txt 
vi postprocess_data.sh 
ll -h all*
vi postprocess_data.sh 
for f in $(cat random_files_order); do cat ddd/$f; done > all3.data
./postprocess_data.sh 
rm -Rf tmp/* mycache/*
vi data2/1JHN.data.test 
vi training_output_with_charges 
vi training_output
diff train.py train_test.py 
python train.py 1JHN
top
python train_test.py 1JHN
vi notes.txt 
vi ~/.bash_history 
grep -P "^H\t" QM9/dsgdb9nsd_000?00.xyz | less
grep -P "^H\t" structures2/dsgdb9nsd_000?00.xyz | less
grep -P "^H " structures2/dsgdb9nsd_000?00.xyz | less
grep -P "^H " structures2/dsgdb9nsd_000??0.xyz | less
grep -P "^H " structures2/dsgdb9nsd_000??0.xyz | cut -f 5 -d" " | less
grep -P "^H " structures2/dsgdb9nsd_000??0.xyz | cut -f 5 -d" " > H.q
grep -P "^H " structures2/dsgdb9nsd_000???.xyz | cut -f 5 -d" " > H.q
grep -P "^O " structures2/dsgdb9nsd_000???.xyz | cut -f 5 -d" " > O.q
grep -P "^O " structures2/dsgdb9nsd_00????.xyz | cut -f 5 -d" " > O.q
grep -P "^C " structures2/dsgdb9nsd_00????.xyz | cut -f 5 -d" " > C.q
vi ~/.bash_history 
python2.7 ./molgeom.py -f XYZ QM9/dsgdb9nsd_000100.xyz | less
vi ~/.bash_history 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
vi prepare_data.sh 
./prepare_data.sh 
ls ddd | wc -l
vi ~/.bash_history 
for f in $(cat random_files_order); do cat ddd/$f; done > all4.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm mycache/* tmp/*
rm -Rf mycache/* tmp/*
ls -ltr data2
less data2/1JHN.data.train 
ls -ltr all*
wc -l all*
vi all4.data 
vi data/1JHN.data.train 
vi all4.data 
grep -P "J*J" all4.data 
grep -P "J.*J" all4.data 
vi all4.data 
grep "^15," ddd/*
for f in ddd/*; do grep -P "^15," $f; done
for f in ddd/*; do echo $f; grep -P "^15," $f; done | less
vi ddd/dsgdb9nsd_000002.xyz.data
vi ~/.bash_history 
python2.7 ./molgeom.py -f XYZ QM9/dsgdb9nsd_000002.xyz | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000002.xyz | less
vi ~/.bash_history 
vi structures2/dsgdb9nsd_000002.xyz
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000002.xyz | less
vi errors 
vi prepare_data.sh 
./prepare_data.sh 
ls ddd | wc -l
vi errors 
for f in $(cat random_files_order); do cat ddd/$f; done > all4.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf tmp/* mycache/*
python train_test.py 1JHN
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf tmp/* mycache/*
vi postprocess_data.sh 
top
meld train_test.py train.py 
ls -ltr data2
less data2/1JHN.data.train
ls -ltr data
less data/1JHN.data.train
ls -ltr
meld train_test.py train.py 
vi best.performance
meld train_test.py train.py 
vi results/4b/training_output 
python train.py 1JHN
vi all3.data 
vi all2.data 
vi training_output_with_charges 
ls training_output*
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
python train_test.py 1JHN
rm -Rf tmp/* mycache/*
python train_test.py 1JHN
python results/4b/train.py 1JHN
vi training_output_with_charges 
ls -ltr train.py 
python train.py 1JHN
ls -ltr
ls -ltr training_output_with_charges 
ls -ltr data
ls -ltr
vi postprocess_data.sh 
vi notes.txt 
vi ~/.bash_history 
ls -ltr predictions/
ls -ltr results/4b/predictions/
ls -ltr results/4c/predictions/
ls -ltr predictions/
ll train.py 
rm -Rf tmp/* mycache/*
vi ~/.bash_history 
python train.py 1JHN
python train_test.py 1JHN
vi training_output_with_charges 
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf tmp/* mycache/*
vi data2/1JHN.data.test 
python train_test.py 1JHN
vi training_output_with_charges 
ls -ltr *
ls -ltr 
vi best.performance 
meld train_test.py train.py 
vi best.performance 
cp train_test.py train.bac
date()
date
python train_test.py 1JHN; date
time python train_test.py 1JHN
rm tmp/* mycache/*
rm -Rf tmp/* mycache/*
time python train_test.py 1JHN
vi best.performance 
vi postprocess_data.sh 
vi best.performance 
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf mycache/* tmp/*
time python train_test.py 1JHN
vi best.performance 
vi ~/.bash_history 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS="," '{print NF}' | less
vi prepare_data.sh 
./prepare_data.sh 
ls ddd | wc -l
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS="," '{print NF}' | less
vi errors 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS="," '{print NF}' | less
./prepare_data.sh 
wc -l errors 
ls ddd | wc -l
ls ddd | wc -l; date
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS="," '{print NF}' | less
ls ddd | wc -l; date
vi postprocess_data.sh 
wc -l errors 
vi postprocess_data.sh 
vi ~/.bash_history 
for f in $(cat random_files_order); do cat ddd/$f; done > all5.data
vi postprocess_data.sh 
./postprocess_data.sh 
awk -v FS="," '{print NF}' data/1JHN.data.train | less
vi data2/1JHN.data.test 
rm -Rf mycache/* tmp/*
ls -ltr
vi all4.performance
time python train_test.py 1JHN
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS="," '{print NF}' | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
./prepare_data.sh 
ls ddd | wc -l; date
vi results/4b/train.py 
meld train.py results/4b/train.py 
vi notes.txt 
ls ddd | wc -l; date
ls -ltr
vi all5.performance
wc -l all*
for f in $(cat random_files_order); do cat ddd/$f; done > all6.data
vi prepare_data.sh 
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf mycache/* tmp/*
time python train_test.py 1JHN
ls -ltr | tail
vi feature_iportance.txt 
time python train_test.py 1JHN
vi feature_iportance.txt 
vi all5.performance 
awk '{print NF}' data/1JHN.data.test | less
awk -v FS="," '{print NF}' data/1JHN.data.test | less
awk -v FS="," '{print NF}' all6.data | less
vi feature.list
for mol in H C N F O all; do for((i=1;i<=9;i++)); do echo $mol $i; done; done | less
for mol in H C N F O all; do for((i=1;i<=9;i++)); do echo G2 descriptor for $mol at distance $i A; echo G2b descriptor for $mol at distance $i A; echo G2c descriptor for $mol at distance $i A; done; echo Min distance for $mol; echo Min distanceB for $mol; echo Min distanceC for $mol; Charge of min distance $mol; done | less
for mol in H C N F O all; do for((i=1;i<=9;i++)); do echo G2 descriptor for $mol at distance $i A; echo G2b descriptor for $mol at distance $i A; echo G2c descriptor for $mol at distance $i A; done; echo Min distance for $mol; echo Min distanceB for $mol; echo Min distanceC for $mol; echo Charge of min distance $mol; done | less
for mol in H C N F O all; do for((i=1;i<=9;i++)); do echo G2 descriptor for $mol at distance $i A; echo G2b descriptor for $mol at distance $i A; echo G2c descriptor for $mol at distance $i A; done; echo Min distance for $mol; echo Min distanceB for $mol; echo Min distanceC for $mol; echo Charge of min distance $mol; done | wc -l
for X in H N; do for mol in H C N F O all; do for((i=1;i<=9;i++)); do echo $X: G2 descriptor for $mol at distance $i A; echo $X: G2b descriptor for $mol at distance $i A; echo $X: G2c descriptor for $mol at distance $i A; done; echo $X: Min distance for $mol; echo $X: Min distanceB for $mol; echo $X: Min distanceC for $mol; echo $X: Charge of min distance $mol; done; done | wc -l
for X in H N; do for mol in H C N F O all; do for((i=1;i<=9;i++)); do echo $X: G2 descriptor for $mol at distance $i A; echo $X: G2b descriptor for $mol at distance $i A; echo $X: G2c descriptor for $mol at distance $i A; done; echo $X: Min distance for $mol; echo $X: Min distanceB for $mol; echo $X: Min distanceC for $mol; echo $X: Charge of min distance $mol; done; done >> feature.list 
vi feature.list 
for mol in H C N F O all; do echo N: number of neighbors of type $mol; done | less
for mol in H C N F O all; do echo N: number of neighbors of type $mol; done >> feature.list 
for mol in H C N F O all; do echo N: number of 2nd level neighbors of type $mol; done >> feature.list 
for mol in H C N F O all; do for((i=1;i<=9;i++)); do echo N distace bins to neighbors, bin nr. $i done; done | less
for mol in H C N F O all; do for((i=1;i<=9;i++)); do echo N distace bins to neighbors, bin nr. $i; done; done | less
for mol in H C N F O all; do for((i=1;i<=9;i++)); do echo N distace bins to neighbors of type $mol, bin nr. $i; done; done | less
for mol in H C N F O all; do for((i=1;i<=40;i++)); do echo N distace bins to neighbors of type $mol, bin nr. $i; done; done | less
for mol in H C N F O all; do for((i=1;i<=40;i++)); do echo N distace bins to neighbors of type $mol, bin nr. $i; done; done | wc -l
for mol in H C N F O all; do for((i=1;i<=40;i++)); do echo N distace bins to neighbors of type $mol, bin nr. $i; done; done >> feature.list 
vi feature.list 
for mol in H C N F O all; do for((i=1;i<=40;i++)); do echo N angle bins to neighbors of type $mol, bin nr. $i; done; done >> feature.list 
vi feature.list 
for mol in H C N F O all; do for((i=1;i<=40;i++)); do echo N torsion bins to neighbors of type $mol, bin nr. $i; done; done >> feature.list 
wc -l feature.list 
less all6.data 
vi postprocess_data.sh 
./postprocess_data.sh 
vi 1JHN.xxx 
wc -l 1JHN.xxx feature.list 
paste 1JHN.xxx feature.list > feature2.list
vi postprocess_data.sh 
less feature2.list 
vi 1JHN.xxx 
paste 1JHN.xxx feature.list > feature2.list
vi feature2.list 
awk -v FS="\t" '{if($2!="" && $2>100) print}' feature2.list | wc -l
wc -l feature_iportance.txt 
awk -v FS="\t" '{if($2!="" && $2>100) print}' feature2.list > feature3.list
awk -v FS="\t" '{if($2!="" && $2>100) {i++; print i"\t"$0}}' feature2.list > feature3.list
vi feature3.list 
awk -v FS="\t" '{if($2!="" && $2>100) {i++; print i-5"\t"$0}}' feature2.list > feature3.list
vi feature3.list 
wc -l feature3.list 
less feature_iportance.txt
awk -v FS="," '{printf("%f.2\n",$2)}' feature_iportance.txt | less
awk -v FS="," '{printf("%.2f\n",$2)}' feature_iportance.txt | less
awk -v FS="," '{printf("%d\n",$2)}' feature_iportance.txt | less
awk -v FS="," '{printf("%d\n",$2)}' feature_iportance.txt > feature2_iportance.txt
paste feature3.list feature2_iportance.txt | less
vi 1JHN.xxx 
wc -l 1JHN.xxx feature2.list 
vi feature2.list 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
vi feature2.list 
paste feature3.list feature2_iportance.txt | less
paste feature3.list feature2_iportance.txt > feature.final
paste feature3.list feature2_iportance.txt | less
less feature.final 
sort -t$'\t' -k5 -nr feature.final | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
./prepare_data.sh 
vi create_feature_list.sh
sort -t$'\t' -k5 -nr feature.final | less
vi feature.list 
vi create_feature_list.sh 
i=9
echo $(()$i/3)
echo $(($i/3))
echo $(($i/2))
echo $i / 2 | bc
echo "scale=2; $i / 2" | bc
vi create_feature_list.sh 
chmod +x create_feature_list.sh 
./create_feature_list.sh | less
vi create_feature_list.sh 
./create_feature_list.sh | less
vi create_feature_list.sh 
./create_feature_list.sh | less
vi create_feature_list.sh 
./create_feature_list.sh | less
vi create_feature_list.sh 
./create_feature_list.sh | less
vi create_feature_list.sh 
./create_feature_list.sh | less
vi create_feature_list.sh 
./create_feature_list.sh | wc -l
wc -l feature.list 
vi feature.list 
./create_feature_list.sh > feature.list 
wc -l 1JHN.xxx
paste 1JHN.xxx feature.list > feature2.list
awk -v FS="\t" '{if($2!="" && $2>100) {i++; print i"\t"$0}}' feature2.list > feature3.list
wc -l feature3.list
vi feature3.list 
awk -v FS="\t" '{if($2!="" && $2>100) {i++; print i-5"\t"$0}}' feature2.list > feature3.list
vi feature3.list 
paste feature3.list feature2_iportance.txt > feature.final
vi feature.final 
sort -t$'\t' -k5 -nr feature.final | less
ls ddd | wc -l
vi ~/.bash_history 
vi all6.performance 
vi feature.final 
evince features.pdf 
vi create_feature_list.sh 
./create_feature_list.sh 
ls -ltr | tail
vi feature.final 
vi create_feature_list.sh 
./create_feature_list.sh 
vi feature.final 
for f in $(cat random_files_order); do cat ddd/$f; done > all6.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
vi ~/.bash_history 
rm -Rf mycache/* tmp/*
time python train_test.py 1JHN
vi all6.performance 
vi create_feature_list.sh 
vi all6.performance 
./create_feature_list.sh | wc -l
./create_feature_list.sh | less
ls -ltr
wc -l 1JHN.xxx 
wc -l feature_iportance.txt 
wc -l feature2_iportance.txt 
vi create_feature_list.sh 
wc -l feature3.list 
vi create_feature_list.sh 
wc -l feature2.list 
vi create_feature_list.sh 
vi feature2.list 
vi create_feature_list.sh 
./create_feature_list.sh | wc -l
./create_feature_list.sh > feature.final2
vi feature.final2 
sort -t$'\t' -k5 -nr feature.final2 | less
cp molgeom.py molgeom2.py
vi molgeom2.py 
vi structures2/dsgdb9nsd_000101.xyz
python2.7 ./molgeom2.py -f XYZ structures2/dsgdb9nsd_000101.xyz | less
vi structures2/dsgdb9nsd_000101.xyz
python2.7 ./molgeom2.py -f XYZ structures2/dsgdb9nsd_000101.xyz | less
top
ps -a | grep vi
kill 27931
ps -a | grep vi
kill -9 27931
ps -a | grep vi
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
vi structures2/dsgdb9nsd_000101.xyz
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS="," '{print NF}' | less
./prepare_data.sh 
vi create_feature_list.sh 
ls ddd | wc -l; date
ls -ltr | tail
sort -t$'\t' -k5 -nr feature.final2 | less
grep descriptor feature.final2 | wc -l
grep descriptor feature.list | wc -l
ls ddd | wc -l; date
./postprocess_data.sh 
vi ~/.bash_history 
vi all6.performance 
rm -Rf tmp/* mycache/*
for f in $(cat random_files_order); do cat ddd/$f; done > all6B.data
ll -h all6*
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
wc -l 1JHN.xxx 
time python train_test.py 1JHN
ls
ls -ltr
./create_feature_list.sh > feature.final3
wc -l feature.final3 
vi feature.final3 
vi all6.performance 
sort -t$'\t' -k5 -nr feature.final3 | less
sort -t$'\t' -k5 -nr feature.final2 | less
wc -l feature.final3 
less feature.final3 
vi all6.performance 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS="," '{print NF}' | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
wc -l errors 
./prepare_data.sh 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS="," '{print NF}' | less
vi create_feature_list.sh 
./create_feature_list.sh 
./create_feature_list.sh > /dev/null 
wc -l feature.list 
vi feature.list 
ll -h 1JHN.data.t*
ll -h data2/1JHN.data.t*
ll -h data2/3JHC.data.t*
ls ddd | wc -l
wc -l all6*
for f in $(cat random_files_order); do cat ddd/$f; done > all6C.data
ll -h all6*
vi prepare_data.sh 
vi postprocess_data.sh 
./postprocess_data.sh 
wc -l all6*
vi data2/1JHN.data.test 
rm -Rf tmp/* mycache/*
time python train_test.py 1JHN
./create_feature_list.sh > feature.final4
wc -l feature.final4
wc -l feature.final3
vi feature.final4 
sort -t$'\t' -k5 -nr feature.final4 | less
time python train_test.py 1JHN
vi all6.performance 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS="," '{print NF}' | less
./prepare_data.sh 
vi create_feature_list.sh 
./create_feature_list.sh > /dev/null 
wc -l feature.list 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz |less
cp molgeom.py molgeom2.py 
vi molgeom2.py 
vi feature.list 
R
exit
exit
ll .molgeom2.py.swp 
rm .molgeom2.py.swp 
vi molgeom2.py 
python2.7 ./molgeom2.py -f XYZ structures2/dsgdb9nsd_000020.xyz |less
vi molgeom2.py 
python2.7 ./molgeom2.py -f XYZ structures2/dsgdb9nsd_000020.xyz |grep QQQ | less
vi molgeom2.py 
python2.7 ./molgeom2.py -f XYZ structures2/dsgdb9nsd_000020.xyz |grep QQQ | less
vi molgeom2.py 
python2.7 ./molgeom2.py -f XYZ structures2/dsgdb9nsd_000020.xyz |grep QQQ | less
python2.7 ./molgeom2.py -f XYZ structures2/dsgdb9nsd_000020.xyz |grep QQQ | grep all | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz |grep QQQ | grep all | less
ls ddd | wc -l
ls ddd | wc -l; date
ps
kill 1617
ps
kill 2320
ps
kill 2321
kill 2323
kill 2325
kill 2327
kill 2329
kill 2330
kill 2332
ps
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
top
./prepare_data.sh 
top
cat /proc/cpuinfo  | grep MHz
top
cat /proc/cpuinfo  | grep MHz
lscpu | grep MHz
cat /proc/cpuinfo  | grep MHz
lscpu | grep MHz
cat /proc/cpuinfo  | grep MHz
lscpu | grep MHz
cat /proc/cpuinfo  | grep MHz
lscpu | grep MHz
cat /proc/cpuinfo  | grep MHz
top
ls ddd | wc -l
ls oof/
meld train.py train_test.py 
lscpu | grep MHz
cat /proc/cpuinfo  | grep MHz | uniq -c
ls ddd | wc -l
cat /proc/cpuinfo  | grep MHz | uniq -c
lscpu | grep MHz
for f in $(cat random_files_order); do cat ddd/$f; done > all6D.data
vi prepare_data.sh 
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf tmp/* mycache/*
wc -l feature.list 
./create_feature_list.sh > /dev/null 
wc -l feature.list 
time python train_test.py 1JHN
vi all6.performance 
./create_feature_list.sh > feature.final5
time python train.py 1JHN
ls -ltr predictions/
./generateSubmission.sh > submission4d.txt
./generateSubmission.sh predictions/ > submission4d.txt
gzip submission4d.txt
vi oof/1JHN.data_oof.txt 
wc -l oof/1JHN.data_oof.txt 
wc -l labels/1JHN.data.train.labels 
ll oof/1JHN.data_oof.txt
tail oof/1JHN.data_oof.txt
vi 1JHN.data.train 
grep -P "^3578265," input/train.csv 
vi structures2/dsgdb9nsd_102794.xyz
vi structures2/dsgdb9nsd_102794.xyz.train 
grep 1JNH structures2/dsgdb9nsd_102794.xyz.train | less
grep 1JHN structures2/dsgdb9nsd_102794.xyz.train | less
vi 1JHN.data.train 
grep -P "^880338," input/train.csv 
vi structures2/dsgdb9nsd_030761.xyz
vi input/mulliken_charges.csv 
vi 1JHN.data.train 
grep -P "^2516587," input/train.csv 
vi 1JHN.data.train 
grep -P "^1725903," input/train.csv 
vi structures2/dsgdb9nsd_056245.xyz
vi notes.txt 
vi evaluate.R 
Rscript evaluate.R 
vi evaluate.R 
Rscript evaluate.R 
vi evaluate.R 
Rscript evaluate.R 
vi evaluate.R 
find results/ -name oof
mv oof/ oof2
cp -R -p results/3/oof .
mv oof2/1JHN.data_oof.txt oof
rmdir oof2
ls -ltr oof
vi evaluate.R 
Rscript evaluate.R 
sort -t$'\t' -k5 -nr feature.final5 | less
vi notes.txt 
ls -ltr feature*
wc -l feature3.list 
vi feature3.list 
vi 1JHN.data.train
head -n 1969 1JHN.data.train | tail -n 1 | awk -v FS=, '{print NF}'
head -n 1969 data/1JHN.data.train | tail -n 1 | awk -v FS=, '{print NF}'
head -n 1969 data/1JHN.data.train | tail -n 1 | awk -v FS=, '{for(i=2;i<=NF;i++) print header[i]}'
head -n 1969 data/1JHN.data.train | tail -n 1 | awk -v FS=, '{for(i=2;i<=NF;i++) print $i"\t"header[i]}' | less
head -n 1969 data/1JHN.data.train | tail -n 1 | awk -v FS=, '{for(i=3;i<=NF;i++) print $i"\t"header[i]}' | less
head -n 1969 data/1JHN.data.train | tail -n 1 | awk -v hhh=feature3.list -v FS=, 'BEGIN{ } {for(i=3;i<=NF;i++) print $i"\t"header[i-2]}' | less
ls *awk
vi subset.awk 
head -n 1969 data/1JHN.data.train | tail -n 1 | awk -v hhh=feature3.list -v FS=, 'BEGIN{ i=1; while((getline line<hhh) > 0){header[i]=line; i++}} {for(i=3;i<=NF;i++) print $i"\t"header[i-2]}' | less
head -n 1969 data/1JHN.data.train | tail -n 1 | awk -v hhh=feature3.list -v FS=, 'BEGIN{ i=1; while((getline line<hhh) > 0){header[i]=line; i++}} {for(i=3;i<=NF;i++) print $i"\t"header[i-2]}' > aaa
vi aaa
head -n 1969 data/1JHN.data.train | tail -n 1 | awk -v hhh=feature3.list -v FS=, 'BEGIN{ i=1; while((getline line<hhh) > 0){header[i]=line; i++}} {for(i=3;i<=NF;i++) print $i"\t"header[i-2]}' | cut -f 1,5 | less
rm aaa
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | awk -v FS=, '{print NF}' | less
wc -l feature.list 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | awk -v FS=, '{print NF}' | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | wc -l
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz > aaa
vi create_feature_list.sh 
./create_feature_list.sh > /dev/null 
wc -l feature3.list 
wc -l feature.list 
head -n 1 aaa | tail -n 1 | awk -v hhh=feature.list -v FS=, 'BEGIN{ i=1; while((getline line<hhh) > 0){header[i]=line; i++}} {for(i=3;i<=NF;i++) print $i"\t"header[i-2]}' | cut -f 1,5 | less
vi feature.list 
head -n 1 aaa | tail -n 1 | awk -v hhh=feature.list -v FS=, 'BEGIN{ i=1; while((getline line<hhh) > 0){header[i]=line; i++}} {for(i=3;i<=NF;i++) print $i"\t"header[i-2]}' | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | less
vi create_feature_list.sh
head -n 1 aaa | tail -n 1 | awk -v hhh=feature.list -v FS=, 'BEGIN{ i=1; while((getline line<hhh) > 0){header[i]=line; i++}} {for(i=3;i<=NF;i++) print $i"\t"header[i-2]}' | less
./create_feature_list.sh > /dev/null 
head -n 1 aaa | tail -n 1 | awk -v hhh=feature.list -v FS=, 'BEGIN{ i=1; while((getline line<hhh) > 0){header[i]=line; i++}} {for(i=3;i<=NF;i++) print $i"\t"header[i-2]}' | less
vi create_feature_list.sh
head -n 1 aaa | tail -n 1 | awk -v hhh=feature.list -v FS=, 'BEGIN{ i=1; while((getline line<hhh) > 0){header[i]=line; i++}} {for(i=3;i<=NF;i++) print $i"\t"header[i-2]}' | less
head -n 1 aaa | tail -n 1 | awk -v hhh=feature.list -v FS=, 'BEGIN{ i=1; while((getline line<hhh) > 0){header[i]=line; i++}} {for(i=1;i<=NF;i++) print $i"\t"header[i]}' | less
head -n 2 aaa | tail -n 1 | awk -v hhh=feature.list -v FS=, 'BEGIN{ i=1; while((getline line<hhh) > 0){header[i]=line; i++}} {for(i=1;i<=NF;i++) print $i"\t"header[i]}' | less
head -n 3 aaa | tail -n 1 | awk -v hhh=feature.list -v FS=, 'BEGIN{ i=1; while((getline line<hhh) > 0){header[i]=line; i++}} {for(i=1;i<=NF;i++) print $i"\t"header[i]}' | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | awk -v FS=, '{print NF}' | less
./prepare_data.sh 
ls ddd | wc -l; date
less ddd/dsgdb9nsd_000001.xyz.data 
for f in ddd/*; do grep ,1000 $f; done | less
ls ddd | wc -l; date
ps
kill 14625 14626 14627 14629 14631 14633 14634 14636
ps
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | awk -v FS=, '{print NF}' | less
./prepare_data.sh 
ls ddd | wc -l; date
lscpu | grep MHz
ps
ls ddd | wc -l; date
lscpu | grep MHz
lscpu | less
ls ddd | wc -l; date
less data/1JHN.data.train 
wc -l feature*
less feature2_iportance.txt
less feature.final5 
top
ll -h all_features.pdf 
ls ddd | wc -l; date
vi ~/.bash_history 
ll -h all6*
ll -Sh all6*
vi postprocess_data.sh 
for f in $(cat random_files_order); do cat ddd/$f; done > all6E.data
ll -Sh all6*
./postprocess_data.sh 
rm -Rf tmp/* mycache/*
time python train.py 1JHN
vi data2/1JHN.data.test 
ll -h  data2/1JHN.data.test 1JHN.data.test
ll -h  data/1JHN.data.test 1JHN.data.test
time python train.py 1JHN
rm -Rf tmp/* mycache/*
time python train.py 1JHN
grep NA data2/1JHN.data.train | wc -l
grep -o NA data2/1JHN.data.train | wc -l
vi all6.performance 
ls -ltr all6*
vi all6E.data 
cp all6E.data all6E-B.data
vi all6E-B.data 
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
ll -h data2/1JHN.data.test
ll -h data2/1JHN.data.train 
ll -h 1JHN.data.train 
rm -Rf tmp/* mycache/*
vi all6.performance 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | awk '{print NF}'
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | awk -v FS=, '{print NF}'
./prepare_data.sh 
time python train.py 1JHN
vi all6.performance 
ls ddd | wc -l
vi postprocess_data.sh 
for f in $(cat random_files_order); do cat ddd/$f; done > all6F.data
vi all6F.data 
./postprocess_data.sh 
rm -Rf tmp/* mycache/*
vi data2/1JHN.data.test 
vi all6.performance 
vi create_feature_list.sh 
wc -l 1JHN.xxx 
./create_feature_list.sh > /dev/null 
wc -l feature.list 
vi feature.list 
time python train.py 1JHN
vi all6.performance 
./prepare_data.sh 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | awk -v FS=, '{print NF}' | less
evince all_features.pdf 
top
ps
ls ddd | wc -l
rm -Rf tmp/* mycache/*
vi postprocess_data.sh 
for f in $(cat random_files_order); do cat ddd/$f; done > all6G.data
./postprocess_data.sh 
vi data2/1JHN.data.test 
time python train.py 1JHN
vi all6.performance 
./prepare_data.sh 
vi all6.performance 
ls ddd | wc -l
vi all6.performance 
ls ddd | wc -l
for f in $(cat random_files_order); do cat ddd/$f; done > all6F.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test
rm -Rf tmp/* mycache/*
vi all6.performance 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | awk -v FS=, '{print NF}' | less
vi create_feature_list.sh 
./create_feature_list.sh > /dev/null 
wc -l feature.list 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | awk -v FS=, '{print NF}' | less
vi create_feature_list.sh 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | awk -v FS=, '{print NF}' | less
./create_feature_list.sh > /dev/null 
wc -l feature.list 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_056245.xyz | awk -v FS=, '{print NF}' | less
vi feature.list 
grep -n "Min torsion" feature.list 
awk -v FS=, '{print NF}' all6F.data | less
cut -f 1-48,51-85,88-122,125-159,162-196,199-1178 all6F.data > all6H.data
ls -ltr all6*
cut -f 1-48,51-85,88-122,125-159,162-196,199-1178 all6F.data > all6H.data
ls -ltr all6*
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-1178 all6F.data > all6H.data
ls -ltr all6*
awk -v FS=, '{print NF}' all6H.data | less
vi all6.performance 
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test
vi all6.performance 
time python train.py 1JHN
rm -Rf tmp/* mycache/*
./prepare_data.sh 
ls ddd | wc -l
time python train.py 1JHN
vi all6.performance 
ls ddd | wc -l
for f in $(cat random_files_order); do cat ddd/$f; done > all6I.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test
rm -Rf tmp/* mycache/*
time python train.py 1JHN
vi all6.performance 
cut -f 1-48,51-85,88-122,125-159,162-196,199-1178 all6I.data > all6J.data
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf tmp/* mycache/*
vi data2/1JHN.data.test
time python train.py 1JHN
vi all6.performance 
cut -f 1-48,51-85,88-122,125-159,162-196,199-233,236-1178 all6I.data > all6J.data
./postprocess_data.sh 
vi data2/1JHN.data.test
rm -Rf tmp/* mycache/*
time python train.py 1JHN
vi all6.performance 
ls -ltr all6J.data all6G.data
awk -v FS=, '{print NF}' all6G.data | less
awk -v FS=, '{print NF}' all6J.data | less
awk -v FS=, '{print NF}' all6I.data | less
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,236-1178 all6I.data > all6J.data
ls -ltr all6J.data all6G.data
diff all6G.data all6J.data | wc -l
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-1178 all6I.data > all6J.data
awk -v FS=, '{print NF}' all6J.data | less
awk -v FS=, '{print NF}' all6G.data | less
./postprocess_data.sh 
rm -Rf tmp/* mycache/*
vi data2/1JHN.data.test
time python train.py 1JHN
vi all6.performance 
grep -A1 -n "Min torsion" feature.list
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,235-1178 all6I.data > all6J.data
ls -ltr all6J.data all6G.data
./postprocess_data.sh 
rm -Rf tmp/* mycache/*
vi data2/1JHN.data.test
time python train.py 1JHN
vi all6.performance 
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,236-1178 all6I.data > all6J.data
./postprocess_data.sh 
rm -Rf tmp/* mycache/*
vi data2/1JHN.data.test
time python train.py 1JHN
vi all6.performance 
exit
R
exit
exit
exit
vi feature.list 
exit
R
exit
jupyter notebook
exit
python
exit
top
cd kaggle/
ls -ltr
grep -n "Min torsion" feature.list
vi ~/.bash_history 
vi ~/.bashrc 
vi ~/.bash_history 
vi all6.performance 
time python train.py 1JHN
vi feature_iportance.txt 
vi create_feature_list.sh 
./create_feature_list.sh 
./create_feature_list.sh > feature.final6
vi feature.final6 
sort -t$'\t' -k5 -nr feature.final6 | less
vi feature.final6 
vi create_feature_list.sh 
vi 1JHN.xxx 
vi feature.final6 
vi feature_iportance.txt 
vi feature.final6 
grep "at distance 10A" feature.final6 | less
grep "at distance 9A" feature.final6 | less
grep "at distance 8A" feature.final6 | less
grep -n "at distance [8,9,10]A" feature.final6 | less
grep -n "at distance (8|10)A" feature.final6 | less
grep -nP "at distance (8|10)A" feature.final6 | less
grep -nP "at distance (9|8|10)A" feature.final6 | less
grep -nP "at distance (9|8|10)A" feature.list | less
vi all6.performance 
vi feature.final6 
grep -nP "at distance (9|8|10|-5|-3.80)A" feature.list | less
vi feature.list 
grep -nP "at distance (9|8|10|-5.00|-3.80)A" feature.list | less
vi feature.final6 
grep -nP "at distance (9|8|10|-5.00|-3.80)A" feature.list | less
vi feature.list 
vi feature2.list 
vi feature.list 
tail -n +6 feature.list > tmp
tail -n +6 feature.list > tmp1
vi tmp1 
grep -nP "at distance (9|8|10|-5.00|-3.80)A" tmp1 | less
grep -vnP "at distance (9|8|10|-5.00|-3.80)A" tmp1 | less
awk -v FS=, '{print NF}' all6I.data | head -n1 
awk -v FS=, '{print NF}' all6I.data | head -n 1 
awk -v FS=, '{print NF}' all6j.data | head -n 1 
awk -v FS=, '{print NF}' all6J.data | head -n 1 
awk -v FS=, '{print NF}' all6.data | head -n 1 
vi all6.performance 
awk -v FS=, '{print NF}' all6G.data | head -n 1 
vi feature.list 
wc -l feature.list 
vi create_feature_list.sh 
./create_feature_list.sh 
./create_feature_list.sh > /dev/null 
vi create_feature_list.sh 
vi feature.le
vi feature.list 
grep -vnP "at distance (9|8|10|-5.00|-3.80)A" feature | less
grep -vnP "at distance (9|8|10|-5.00|-3.80)A" feature.list | less
grep -vnP "at distance (9|8|10|-5.00|-3.80)A" feature.list | grep -v "Min angle" | grep -v "Min torsion" | less 
grep -vnP "at distance (9|8|10|-5.00|-3.80)A" feature.list | grep -v "Min angle" | grep -v "Min torsion" | awk -v FS=: '{printf("$1,")}'
grep -vnP "at distance (9|8|10|-5.00|-3.80)A" feature.list | grep -v "Min angle" | grep -v "Min torsion" | awk -v FS=: '{printf("%d,",$1)}'
vi ~/.bash_history 
ls -ltr all6*
cut -f 1,2,3,4,5,6,7,8,9,10,11,12,13,14,16,17,19,20,21,22,23,24,25,26,27,28,29,30,31,33,36,39,41,42,43,44,45,46,47,48,51,53,54,56,57,58,59,60,61,62,63,64,65,66,67,68,70,73,76,78,79,80,81,82,83,84,85,88,90,91,93,94,95,96,97,98,99,100,101,102,103,104,105,107,110,113,115,116,117,118,119,120,121,122,125,127,128,130,131,132,133,134,135,136,137,138,139,140,141,142,144,147,150,152,153,154,155,156,157,158,159,162,164,165,167,168,169,170,171,172,173,174,175,176,177,178,179,181,184,187,189,190,191,192,193,194,195,196,199,201,202,204,205,206,207,208,209,210,211,212,213,214,215,216,218,221,224,226,227,228,229,230,231,232,233,236,238,239,241,242,243,244,245,246,247,248,249,250,251,252,253,255,258,261,263,264,265,266,267,268,269,270,271,273,274,276,277,278,279,280,281,282,283,284,285,286,287,288,290,293,296,298,299,300,301,302,303,304,305,306,308,309,311,312,313,314,315,316,317,318,319,320,321,322,323,325,328,331,333,334,335,336,337,338,339,340,341,343,344,346,347,348,349,350,351,352,353,354,355,356,357,358,360,363,366,368,369,370,371,372,373,374,375,376,378,379,381,382,383,384,385,386,387,388,389,390,391,392,393,395,398,401,403,404,405,406,407,408,409,410,411,413,414,416,417,418,419,420,421,422,423,424,425,426,427,428,430,433,436,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177 -d, all6I.data > all6K.data
ls -ltr all6*
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf tmp/* mycache/*
vi data2/1JHN.data.test 
time python train.py 1JHN
vi all6.performance 
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf tmp/* mycache/*
vi data2/1JHN.data.test 
time python train.py 1JHN
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf tmp/* mycache/*
time python train.py 1JHN
ls -ltr predictions/
./generateSubmission.sh predictions/ > submission4e.txt
wc -l submission4c.txt submission4e.txt
vi evaluate.R 
ls oof/
ls -ltr oof/
vi evaluate.R 
Rscript evaluate.R 
vi notes.txt 
vi .Rhistory 
vi all6.performance 
vi notes.txt 
time python train.py 1JHN
less model.txt 
ll -h model.txt 
time python train.py 1JHN
ls -ltr | tail
ls -ltrh | tail
time python train.py 1JHN
ll model.txt 
ll -h model.txt 
rm model.txt 
time python train.py 1JHN
vi all6.performance 
vi notes.txt 
ls -ltr oof/
less oof/1JHN.data_oof.txt 
tail oof/1JHN.data_oof.txt 
mv oof/1JHN.data_oof.txt .
ls -ltr | tail
time python train.py 1JHN
ls -ltr oof/
top
ls labels/
less labels/1JHC.data.train.labels 
ll -h model.txt 
rm model.txt 
ls structures2/ | head
less structures2/dsgdb9nsd_000001.xyz
grep -P "^C " structures2/dsgdb9nsd_000001.xyz | less
grep -P "^C " structures2/dsgdb9nsd_00000?.xyz | less
grep -P "^C " structures2/dsgdb9nsd_00000?.xyz | awk '{print $NF}' | less
wc -l C.q 
time python train.py 1JHN
rm model.txt 
time python train.py 1JHN
ls input/dipole_moments.csv 
wc -l input/dipole_moments.csv 
less input/dipole_moments.csv 
vi structures2/dsgdb9nsd_000001.xyz
vi prepare_data.sh 
./prepare_data.sh 
ls ddd | wc -l
ls ddd | head
vi ~/.bash_history 
vi postprocess_data.sh 
vi ~/.bash_history 
awk -v FS=, '{print NF}' ddd/dsgdb9nsd_000001.xyz.data | head -n 1
awk -v FS=, '{print NF}' ddd/dsgdb9nsd_000002.xyz.data | head -n 1
vi create_feature_list.sh 
./create_feature_list.sh > /dev/null 
wc -l feature.list 
ls ddd | wc -l
vi ~/.bash_history 
ls -ltr all6*
vi postprocess_data.sh 
for f in $(cat random_files_order); do cat ddd/$f; done > all6L.data
./postprocess_data.sh 
vi postprocess_data.sh 
vi data2/1JHN.data.test 
vi postprocess_data.sh 
rm -Rf model.txt tmp/* mycache/*
vi all6.performance 
vi ~/.bash_history 
grep -A1 -n "Min torsion" feature.list
vi ~/.bash_history 
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,236-1178 all6L.data > all6M.data
ls -ltr all6*
wc -l feature.list 
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,236-1537 all6L.data > all6M.data
head -n 1 all6L.data
head -n 1 all6M.data
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,236-1538 all6L.data > all6M.data
vi postprocess_data.sh 
vi all6.performance 
./postprocess_data.sh 
vi data2/1JHN.data.test 
time python train.py 1JHN
vi all6.performance 
rm -Rf model.txt tmp/* mycache/*
time python train.py 1JHN
./prepare_data.sh 
ls ddd | wc -l
sort -t$'\t' -k5 -nr feature.final6 | less
ls ddd | wc -l
./create_feature_list.sh > /dev/null 
wc -l feature.list 
for f in $(cat random_files_order); do cat ddd/$f; done > all6N.data
vi create_feature_list.sh 
./create_feature_list.sh > /dev/null 
wc -l feature.list 
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,236-998 all6N.data > all6O.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
time python train.py 1JHN
./prepare_data.sh 
ls ddd | wc -l
for f in $(cat random_files_order); do cat ddd/$f; done > all6P.data
vi all6.performance 
vi create_feature_list.sh 
./create_feature_list.sh > /dev/null 
wc -l feature.list 
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,236-817 all6P.data > all6Q.data
vi prepare_data.sh 
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf model.txt tmp/* mycache/*
vi data2/1JHN.data.test 
vi postprocess_data.sh 
time python train.py 1JHN
vi all6.performance 
./prepare_data.sh 
ls ddd | wc -l
ls -ltr all6*
for f in $(cat random_files_order); do cat ddd/$f; done > all6R.data
awk -v FS=, '{print NF}' all6R.data | head -n 1
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,236-728 all6R.data > all6S.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
time python train.py 1JHN
vi all6.performance 
./prepare_data.sh 
vi ~/.bash_history 
vi all6.performance 
for f in $(cat random_files_order); do cat ddd/$f; done > all6T.data
awk -v FS=, '{print NF}' all6T.data | head -n 1
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,236-638 all6T.data > all6U.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
time python train.py 1JHN
vi all6.performance 
vi ~/.bash_history 
python2.7 ./molgeom.py -f XYZ QM9/dsgdb9nsd_000100.xyz | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000100.xyz | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_00020.xyz | less
ls structures2/dsgdb9nsd_00020.xyz
ls structures2/dsgdb9nsd_000020.xyz
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
./prepare_data.sh 
ls ddd | wc -l
ll molgeom.py 
ls -ltr ddd | tail
awk -v FS=, '{print NF}' ddd/dsgdb9nsd_027382.xyz.data | less
awk -v FS=, '{print NF}' ddd/dsgdb9nsd_000020.xyz.data | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz > aaa1
diff aaa1 structures2/dsgdb9nsd_000020.xyz.data | wc -l
diff aaa1 ddd/dsgdb9nsd_000020.xyz.data | wc -l
diff aaa1 ddd/dsgdb9nsd_000020.xyz.data | less
meld aaa1 ddd/dsgdb9nsd_000020.xyz.data 
vi prepare_data.sh 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | sed -e s/0\\.00,/0,/g > aaa1
diff aaa1 ddd/dsgdb9nsd_000020.xyz.data | wc -l
meld aaa1 ddd/dsgdb9nsd_000020.xyz.data 
ls ddd | wc -l
for f in $(cat random_files_order); do cat ddd/$f; done > all6V.data
awk -v FS=, '{print NF}' all6V.data | head -n 1
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,236-641 all6V.data > all6W.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
time python train.py 1JHN
vi create_feature_list.sh 
./create_feature_list.sh > feature.final7
sort -t$'\t' -k5 -nr feature.final7 | less
vi create_feature_list.sh 
./create_feature_list.sh > feature.final7
sort -t$'\t' -k5 -nr feature.final7 | less
vi create_feature_list.sh 
vi feature.list 
vi create_feature_list.sh 
wc -l 1JHN.xxx feature.list 
vi feature2.list 
vi create_feature_list.sh 
vi feature3.list 
vi feature.final7
wc -l feature.list 
awk -v FS=, '{print NF}' all6V.data | head -n 1
awk -v FS=, '{print NF}' all6W.data | head -n 1
grep -n X feature.list 
vi all6.performance 
cut -d -f 1-505,509-629 all6W.data > all6AA.data
cut -d, -f 1-505,509-629 all6W.data > all6AA.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
ls -ltr all6*
awk -v FS=, '{print NF}' all6AA.data | head -n 1
awk -v FS=, '{print NF}' all6W.data | head -n 1
awk -v FS=, '{print NF}' all6U.data | head -n 1
meld all6U.data all6AA.data
head all6U.data > a1
head all6AA.data > a2
diff a1 a2 | wc -l
meld a1 a2
time python train.py 1JHN
vi create_feature_list.sh 
./create_feature_list.sh > feature.final7
sort -t$'\t' -k5 -nr feature.final7 | less
ls structures2 | head
less structures2/dsgdb9nsd_000005.xyz
grep -P "^. " structures2/dsgdb9nsd_000005.xyz | less
grep -P "^. " structures2/dsgdb9nsd_0000??.xyz | less
grep -P "^. " structures2/dsgdb9nsd_0000??.xyz | cut -f 5 | less
grep -P "^. " structures2/dsgdb9nsd_0000??.xyz | cut -f 5 -d" " | less
grep -P "^. " structures2/dsgdb9nsd_0000??.xyz | cut -f 5 -d" " | sort -g | head -n 1
grep -P "^. " structures2/dsgdb9nsd_0000??.xyz | cut -f 5 -d" " | sort -g | tail -n 1
grep -P "^. " structures2/dsgdb9nsd_000???.xyz | cut -f 5 -d" " | sort -g | head -n 1
grep -P "^. " structures2/dsgdb9nsd_000???.xyz | cut -f 5 -d" " | sort -g | tail -n 1
grep -P "^. " structures2/dsgdb9nsd_001???.xyz | cut -f 5 -d" " | sort -g | tail -n 1
grep -P "^. " structures2/dsgdb9nsd_00????.xyz | cut -f 5 -d" " | sort -g | tail -n 1
grep -P "^. " structures2/dsgdb9nsd_01????.xyz | cut -f 5 -d" " | sort -g | tail -n 1
grep -P "^. " structures2/dsgdb9nsd_01????.xyz | cut -f 5 -d" " | sort -g | head -n 1
grep -P "^. " structures2/dsgdb9nsd_11????.xyz | cut -f 5 -d" " | sort -g | head -n 1
sort -t$'\t' -k5 -nr feature.final7 | less
vi all6.performance 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS=, '{ print NF}' | hean -n 1
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS=, '{ print NF}' | head -n 1
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS=, '{ print NF}' | head 
./prepare_data.sh 
ls ddd | wc -l
ls ddd | wc -l; date
less input/magnetic_shielding_tensors.csv 
wc -l input/magnetic_shielding_tensors.csv 
less input/magnetic_shielding_tensors.csv 
wc -l input/structures.csv 
wc -l input/train.csv 
wc -l input/test.csv 
less input/test.csv 
grep dsgdb9nsd_000004 input/magnetic_shielding_tensors.csv
grep dsgdb9nsd_000003 input/magnetic_shielding_tensors.csv
ls input/
ls input/dipole_moments.csv 
less input/dipole_moments.csv 
exit
ls ddd | wc -l; date
for f in $(cat random_files_order); do cat ddd/$f; done > all6AB.data
awk -v FS=, '{print NF}' all6AB.data | head -n 1
cut -d, -f 1-48,51-85,88-122,125-159,162-196,199-233,236-638 all6AB.data > all6AC.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test
rm -Rf model.txt tmp/* mycache/*
vi ~/.bash_history 
time python train.py 1JHN
vi all6.performance 
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf model.txt tmp/* mycache/*
vi data2/1JHN.data.test
time python train.py 1JHN
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | grep KKK | less
vi prepare_data.sh 
wc -l aaax
less aaax
wc -l aaax
for f in structures2/*xyz; do python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | grep KKK; done > aaax
vi input/mulliken_charges.csv 
for f in structures2/*xyz; do python2.7 ./molgeom.py -f XYZ $f | grep KKK; done > aaax
wc -l aaax
ls -ltr | tail
wc -l aaaq
less aaaq
for f in structures2/*xyz; do python2.7 ./molgeom.py -f XYZ $f | grep CCC; done > aaaq
./prepare_data.sh 
ps
kill 28373 28374 28376 28378 28381 28382 28385 28386
ps
./prepare_data.sh 
ls ddd | wc -l; date
ls ddd | head
awk -v FS=, '{ print NF}' ddd/dsgdb9nsd_000001.xyz.data | less
awk -v FS=, '{ print NF}' ddd/dsgdb9nsd_000020.xyz.data | less
ps
kill 5327 5328 5330 5331 5334 5336 5338 5340
ps
./prepare_data.sh 
awk -v FS=, '{ print NF}' ddd/dsgdb9nsd_000020.xyz.data | less
vi notes.txt 
ls ddd | wc -l
ps
vi all6.performance 
ps
vi prepare_data.sh 
sort -t$'\t' -k5 -nr feature.final7 | less
ls ddd | wc -l; date
ps
kill 4557 4558 4560 4562 4564 4566 4568 4570
ps
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | wc -l
./prepare_data.sh 
ps
ls ddd | wc -l; date
ps
ps | grep bash
kill 4183 4184 4185 4188 4190 4192 4194 4196
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | wc -l
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS=, '{print NF}'
./prepare_data.sh 
ls ddd | wc -l ; date
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | awk -v FS=, '{print NF}'
vi create_feature_list.sh 
./create_feature_list.sh > /dev/null 
vi create_feature_list.sh 
./create_feature_list.sh > /dev/null 
wc -l feature.list 
vi feature.list 
ls ddd | wc -l ; date
vi feature.list 
ls ddd | wc -l
ls ddd | wc -l ; date
wc -l feature.list 
vi feature.list 
ls ddd | wc -l ; date
for f in $(cat random_files_order); do cat ddd/$f; done > all6AD.data
cut -d, -f 1-745 all6AD.data > all6AD-745.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
time python train.py 1JHN
vi data2/1JHN.data.train 
vi errors 
vi data2/1JHN.data.train 
vi data/1JHN.data.train 
./prepare_data.sh 
ls -ltr molgeom.py molgeom_local.py 
vi data/1JHN.data.train 
less input/train.csv 
vi data/1JHN.data.train 
less input/train.csv 
vi feature.list 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000002.xyz | awk -v FS=, '{print NF}'
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000002.xyz | less
ls ddd | wc -l; date
wc -l errors 
ls ddd | wc -l; date
vi all6.performance 
ls ddd | wc -l
for f in $(cat random_files_order); do cat ddd/$f; done > all6AD.data
cut -d, -f 1-745 all6AD.data > all6AD-745.data
./postprocess_data.sh 
vi data2/1JHN.data.train 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
vi feature.list 
time python train.py 1JHN
cut -d, -f 1-835 all6AD.data > all6AD-835.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi all6.performance 
rm -Rf model.txt tmp/* mycache/*
vi data2/1JHN.data.test 
time python train.py 1JHN
vi feature.list 
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf model.txt tmp/* mycache/*
vi data2/1JHN.data.train 
vi data2/1JHN.data.test 
vi all6.performance 
vi create_feature_list.sh 
./create_feature_list.sh > feature.final8
vi feature.final8
wc -l feature.list 
vi postprocess_data.sh 
./postprocess_data.sh 
./create_feature_list.sh > feature.final8
vi feature.final8
sort -t$'\t' -k5 -nr feature.final8 | less
time python train.py 1JHN
vi all6.performance 
./prepare_data.sh 
vi create_feature_list.sh 
./create_feature_list.sh > /dev/null 
wc -l feature.list 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000002.xyz | awk -v FS=, '{print NF}'
wc -l errors 
ps
ps
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000002.xyz | awk -v FS=, '{print NF}'
./prepare_data.sh 
wc -l errors 
ls ddd | wc -l; date
for f in $(cat random_files_order); do cat ddd/$f; done > all6AE.data
vi feature.list 
vi create_feature_list.sh 
./create_feature_list.sh 
vi feature.list 
cut -d, -f 1-910 all6AE.data > all6AE-910.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
time python train.py 1JHN
vi postprocess_data.sh 
vi feature.list 
vi create_feature_list.sh 
vi feature.list 
cut -d, -f 1-910 all6AE.data > all6AE-925.data
cut -d, -f 1-925 all6AE.data > all6AE-925.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
vi all6.performance 
vi ~/.bash_history 
vi postprocess_data.sh 
vi all6.performance 
vi feature.list 
head -n 925 feature.list | grep -vn all | wc -l 
head -n 925 feature.list | grep -vn all | less
head -n 925 feature.list | grep -vn all | awk -v FS=: '{printf("%s,",$1)}'
cut -d, -f 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,434,435,436,437,438,440,441,442,443,444,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910 allAE.all > /dev/null 
cut -d, -f 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,434,435,436,437,438,440,441,442,443,444,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910 allAE.data > /dev/null 
cut -d, -f 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,434,435,436,437,438,440,441,442,443,444,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910 all6AE.data > /dev/null 
vi postprocess_data.sh 
cut -d, -f 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,434,435,436,437,438,440,441,442,443,444,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910 all6AE.data > all6AE-910-noall.data
vi postprocess_data.sh 
ls all6AE-910-noall.data
wc -l all6AE-910-noall.data
vi all6.performance 
time python train.py 1JHN
./postprocess_data.sh 
rm -Rf model.txt tmp/* mycache/*
vi data2/1JHN.data.test 
time python train.py 1JHN
vi all6.performance 
cut -d, -f 1-820,836-910 all6AE.data > all6AE-910B.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi feature.list 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
time python train.py 1JHN
vi all6.performance 
cut -d, -f 1-910,926-1000 all6AE.data > all6AE-1000.data
vi feature.list 
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
vi all6.performance 
vi feature.list 
vi all6.performance 
time python train.py 1JHN
cut -d, -f 1-910,1016-1090 all6AE.data > all6AE-1090.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
time python train.py 1JHN
vi postprocess_data.sh 
./postprocess_data.sh 
vi all6.performance 
vi data2/1JHN.data.test 
rm -Rf model.txt tmp/* mycache/*
time python train.py 1JHN
ls -ltr oof/
Rscript evaluate.R 
vi all6.performance 
./generateSubmission.sh predictions/ > submission4f.txt
wc -l submission*
gzip submission4f.txt
gunzip submission4f.txt.gz 
less submission4f.txt
tail submission4f.txt
gzip submission4f.txt
vi notes.txt 
./create_feature_list.sh > /dev/null 
wc -l feature.list 
awk -v FS=, '{print NF}' all6AE-910.data | head -n 1
vi create_feature_list.sh 
wc -l 1JHN.xxx
./create_feature_list.sh > feature.final9
vi feature.final9 
./prepare_data.sh 
ls ddd | wc -l
ls ddd | wc -l; date
sort -t$'\t' -k5 -nr feature.final9 | less
ls ddd | wc -l; date
vi postprocess_data.sh 
ls ddd | head
awk -v FS=, '{print NF}' ddd/dsgdb9nsd_000002.xyz.data | head -n 1
ls ddd | wc -l; date
vi results/3/training_output 
for f in $(cat random_files_order); do cat ddd/$f; done > all6AE.data
cut -d, -f 1-910 all6AE.data > all6AE-910.data
vi prepare_data.sh 
vi postprocess_data.sh 
./postprocess_data.sh 
vi postprocess_data.sh 
ps
kill 23229
ps
kill 23374
ps
./postprocess_data.sh 
ls -ltr data
ps
ls -ltr data
ps
vi postprocess_data.sh 
vi data2/1JHN.data.test 
vi data2/1JHC.data.test 
rm -Rf model.txt tmp/* mycache/*
time python train.py 1JHN
vi all6.performance 
vi results/3/training_output 
vi notes.txt 
vi results/1/training_output 
vi results/3/training_output 
vi results/1/training_output 
vi results/3/training_output 
vi notes.txt 
vi results/1/training_output 
vi results/3/training_output 
vi notes.txt 
time python train.py 1JHC
Rscript evaluate.R 
top
vi notes.txt 
vi ~/.bash_history 
wc -l ~/.bash_history 
vi ~/.bashrc
wc -l ~/.bash_history 
wc -l ~/.bash_history
wc -l ~/.bash_history
top
ls -ltr | tail
ls -ltrh | tail
ls -ltrh oof/ | tail
ls -ltrh predictions/ | tail
ls -ltrh oof/ | tail
ls -ltrh | tail
mv model.txt model-1JHC.txt 
ls -ltrh predicti/ | tail
ls -ltrh predictions/ | tail 
./generateSubmission.sh predictions/ > submission5a.txt
wc -l submission*
Rscript evaluate.R 
vi notes.txt 
exit
vi results/1/training_output 
vi results/3/training_output 
vi notes.txt 
vi all6.performance 
top
wc -l 1JHC.xxx 
wc -l feature.list 
./create_feature_list.sh > feature.1JHC
mv feature.final9 feature.1JHN
wc -l feature.1JHC feature.1JHN
vi feature.1JHC 
vi postprocess_data.sh 
vi create_feature_list.sh 
./create_feature_list.sh 1JHC > feature.1JHC
vi feature.1JHC
vi create_feature_list.sh 
./create_feature_list.sh 1JHC > feature.1JHC
vi feature.1JHC
sort -t$'\t' -k5 -nr feature.1JHC | less
vi results/3/training_output 
ls /mnt/scratch/users/pmajek/kaggle/
ls /mnt/scratch/users/pmajek/kaggle/segmentation/
ls /mnt/scratch/users/pmajek/work/kaggle/
ls /mnt/scratch/users/pmajek/work/kaggle/lungs/
time python train.py 1JHC
ls -ltr model-1JHC.txt 
ls -ltrh model-1JHC.txt 
mv model-1JHC.txt model-1JHC-90K.txt 
ls -ltr oof/
ls -ltr predictions/
vi all6.performance 
ls -ltr
vi 1JHC.performance
vi 1JHC.performance
ls -ltr oof/
ls -ltr submission*
ls -ltrh | tail
ls -ltrh model-1JHC-90K.txt | tail
time python train.py 1JHC
ls -ltr
ls -ltrh model-1JHC*
less model-1JHC-90K.txt
rm model-1JHC.txt 
ls -ltr oof/
ls -ltr predictions/
time python train.py 1JHC
vi 1JHC.performance
exit
top
exit
exit
R
exit
exit
exit
exit
exit
exit
top
exit
ls
cd EC_94/
ls
grep scratch ~/.bash_history | less
ls /mnt/scratch/users/pmajek/laptop_data/local/
cd ..
mv EC_94/ /mnt/scratch/users/pmajek/laptop_data/local/
ls
vi examples.desktop 
mv Desktop/CV/ .
ls
ls R/
ls R/x86_64-pc-linux-gnu-library/
ls snap/
mv CV/ Documents/
ls
ls Documents/
ls Downloads/
ls -ltr Downloads/
top
ping google.com
ifconfig
ipconfig
ifconfig
sudo apt install net-tools
ping google.com
sudo apt install net-tools
cd kaggle/
ls
mkdir chemistry
mv * chemistry/
ls
ls ~/Downloads/
rm ~/Downloads/peter.*
ls
mkdir cells
cd cells/
ls
df -h
ls -ltr ~/Downloads/
df -h ~
df -h /media/pmajek/My\ Passport/
mv ~/Downloads/recursion-cellular-image-classification.zip .
ll -h
cd /media/pmajek/My\ Passport/
mkdir kaggle
ll -h recursion-cellular-image-classification.zip 
mv recursion-cellular-image-classification.zip /media/pmajek/My\ Passport/
cd /media/pmajek/My\ Passport/
cd kaggle/
mv ../recursion-cellular-image-classification.zip .
ll -h
cd kaggle/
ls
ll -h
top
ll -h
mkdir test
mv test.zip test
cd test/
ls
cd ..
ls
less sample_submission.csv 
unzip recursion-cellular-image-classification.zip 
unzip test.zip 
ls
cd ..
ls
mkdir train
mv train.zip train
cd train/
ls
ls
ll -h
ll -h train/train.zip test/test.zip 
cd test/
ls
ls HEPG2-08
ls HEPG2-08/Plate1/
ls HEPG2-08
ls HEPG2-08/Plate1/ | wc -l
ls HEPG2-08/Plate2/ | wc -l
ls 
ls | wc -l
du --max-depth=1 -h .
ls ..
wc -l ../test_controls.csv 
less ../test_controls.csv 
grep negative ../test_controls.csv | wc -l
grep negative ../test_controls.csv | less
grep negative ../test_controls.csv | cut -f 2 -d, | less
grep negative ../test_controls.csv | cut -f 2 -d, | sort | uniq -c | less
grep negative ../test_controls.csv | less
wc -l ../test_controls.csv 
wc -l ../train_controls.csv 
wc -l ../train.csv 
less ../train.csv 
less ../test.csv 
less ../train.csv 
awk -v FS=, '{if($5==513) print }' ../train.csv | less
cut -f 5 ../train.csv | less
cut -d, -f 5 ../train.csv | less
cut -d, -f 5 ../train.csv | sort | uniq -c | sort -rnk1 | less
ls ../train | wc -l
cut -d, -f 5 ../train.csv | sort | uniq -c | sort -rnk1 | wc -l
unzip train.zip 
ls
ls | wc -l
df -h /home/
lsgrep scratch ~/.bash_history 
grep scratch ~/.bash_history 
vi carboxylic_acid.txt
ci carboxylic_acid.txt 
vi carboxylic_acid.txt 
R
exit
exit
ls
R
exit
cd ~/kaggle/
ls
cd chemistry/
ls
vi prepare_data.sh 
which python2.7
vi prepare_data.sh 
ls structures2 | head
vi prepare_data.sh 
python2.7 ./molgeom_local.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
ls -ltrh
./prepare_data.sh 
ls ddd | wc -l
ls ddd | wc -l; date
wc -l errors 
vi errors 
wc -l errors 
ps | grep bash
kill 3429 3430 3431 3434 3436 3438 3439 3442
ps
ls ddd | wc -l; date
vi errors 
python2.7 ./molgeom_local.py -f XYZ structures2/dsgdb9nsd_000020.xyz > abc
vi abc
python2.7 ./molgeom_local.py -f XYZ structures2/dsgdb9nsd_000020.xyz > abc
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz > abc
vi abc
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz > abc
vi abc
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz > abc
vi abc
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz > abc
wc -l abc
wc -l structures2/dsgdb9nsd_000020.xyz.train 
vi abc
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz > abc
wc -l abc
vi abc
./prepare_data.sh 
ls ddd | wc -l
ls ddd | wc -l; date
wc -l errors 
vi errors 
ps | grep bash
kill 26652 26653 26654 26656 26659 26661 26663 26664
./prepare_data.sh 
wc -l errors 
ps | grep bash
kill 28483 28484 28485 28487 28489 28491 28493 28495
vi errors 
./prepare_data.sh 
wc -l errors 
ls ddd | wc -l date
ls ddd | wc -l; date
wc -l errors 
ls ddd | wc -l; date
wc -l errors 
ls ddd | wc -l; date
top
ls ddd | wc -l; date
python
ls ddd | head
awk -v FS=, '{print NF}' ddd/dsgdb9nsd_000010.xyz.data
awk -v FS=, '{print NF}' ddd/dsgdb9nsd_000020.xyz.data
for f in $(ls ddd | head -n 30); do awk -v FS=, '{print NF}' ddd/$f; done | less
for f in $(ls ddd | head -n 30); do awk -v FS=, '{print NF}' ddd/$f; done | sort | uniq -c | sort -rnk1
for f in $(ls ddd | head -n 100); do awk -v FS=, '{print NF}' ddd/$f; done | sort | uniq -c | sort -rnk1
vi aaa1
gedit aaa1
rm aaa1
for f in $(ls ddd | head -n 1000); do awk -v FS=, '{print NF}' ddd/$f; done | sort | uniq -c | sort -rnk1
vi ~/.bash_history 
for f in $(cat random_files_order); do cat ddd/$f; done > all7A.data
ll -h all7A.data 
df -h .
rm -Rf ddd
df -h .
ls -lSrh
rm all.data 
vi postprocess_data.sh 
vi all6.performance 
vi feature.list 
wc -l 1JHN.xxx 
less 1JHN.xxx 
vi postprocess_data.sh 
vi ~/.bash_history 
vi prepare_data.sh 
vi create_feature_list.sh 
./create_feature_list.sh 
wc -l aaa
vi aaa
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf tmp/* mycache/*
vi ~/.bash_history 
vi data/1JHN.data.test 
vi data2/1JHN.data.test 
time python train.py 1JHN
vi all6.performance 
vi create_feature_list.sh 
mv create_feature_list.sh create_feature_list_1JHN.sh 
cp create_feature_list_1JHN.sh create_feature_list_2JHN.sh 
vi create_feature_list_2JHN.sh 
mv create_feature_list_2JHN.sh create_feature_list_2JHC.sh 
vi create_feature_list_2JHC.sh 
./create_feature_list_2JHC.sh 
vi aaa2
vi all6.performance 
vi create_feature_list_1JHN.sh 
vi aaa2
less all7A.data 
grep 2JHC all7A.data | awk -v FS=, '{print NF}' | less
vi aaa2
vi aaa1
wc -l aaa1
./create_feature_list_1JHN.sh 
wc -l aaa1
vi aaa1
vi aaa2
grep 2JHC all7A.data > all7A_2JHC.data
rm all7A_2JHC.data
grep 2JHC|2JHN all7A.data > all7A_2JHx.data
wc -l all7A_2JHx.data
grep "2JHC|2JHN" all7A.data > all7A_2JHx.data
grep "2JHC|2JHN" all7A.data | less
grep -P "2JHC|2JHN" all7A.data | less
grep -P "2JHC|2JHN" all7A.data > all7A_2JHx.data
ll -h
ll -h all7A_2JHx.data
ll -h all7A_2JHx_filter1.data
cut -d, -f 1-1050,1066-1140,1516-1695 all7A_2JHx.data > all7A_2JHx_filter1.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi notes.txt 
vi train_all.sh 
rm -Rf tmp/* mycache/* 
vi data2/2JHN.data.test 
find results/ -name "training*"
ps
df -h .
vi notes.txt 
ps
ls -ltrh | tail
ls -ltrh data | tail 
ls -ltrh data2 | tail 
vi results/4b/training_output
ls -ltr
time python train.py 2JHN
vi all7.performance
vi data2/2JHC.data.test 
rm data2/.2JHC.data.test.swp 
vi data2/2JHC.data.test 
ll -h data2/2JHC.data.test 
clear
rm data2/.2JHC.data.test.swp 
ll -h data2/2JHC.data.test 
sed -e 's/X/0/' data2/2JHC.data.test > aaa
ll -h aaa
mv aaa data2/2JHC.data.test
less data2/2JHC.data.test
top
vi notes.txt 
time python train.py 2JHC
R
exit
top
vi results/4b/training_output
vi results/4/training_output
vi results/3/training_output
vi notes.txt 
vi train.py 
ls -ltr model-*
ls -ltrh model-*
cp model-2JHC.txt model-2JHC-30K.txt
vi results/3/training_output
ls -ltr | tail
vi all7.performance 
mv all7.performance all7-2JHN.performance
vi all7-2JHC.performance 
vi notes.txt 
vi all7-2JHC.performance 
top
ls -ltr predictions/
ls -ltr oof/
vi results/3/training_output
vi notes.txt 
wc -l data2/*train
wc -l data/*train
vi postprocess_data.sh 
top
vi ~/.bash_history 
wc -l aaa2
vi aaa2
vi create_feature_list_2JHC.sh 
./create_feature_list_2JHC.sh 2JHC > /dev/null 
ls -ltrh | tail
wc -l feature.list.2JHC
vi create_feature_list_2JHC.sh 
vi feature.list.2JHC
cut -d";" -f 1-1050,1066-1140,1516-1695 feature.list.2JHC > aaa
vi aaa
mv aaa feature.list.2JHC.filter1
wc -l data2/*train
time python train.py 2JHC
./generateSubmission.sh ./predictions > submission7a.txt
wc -l submission*
Rscript evaluate.R 
vi filters.txt
ls results/
ls -ltr oof/
ls -ltr predictions/
vi submission7a.txt 
vi notes.txt 
ll model-1JHN.txt 
rm model-1JHN.txt 
time python train.py 1JHN
vi train.py 
time python train.py 1JHN
ls all6*
awk -v FS=, '{print NF}' all6AE-910.data | head -n 1
awk -v FS=, '{print NF}' all6AE-910-noall.data | head -n 1
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf tmp/* mycache/*
vi generateSubmission.sh 
ls TESTids/
less TESTids/1JHC.data_prediction.txt
wc -l TESTids/1JHC.data_prediction.txt
wc -l predictions/1JHC.data_prediction.txt 
less predictions/1JHC.data_prediction.txt 
less TESTids/1JHC.data_prediction.txt
vi all6.performance 
for f in $(cat TESTids/1JHC.data_prediction.txt | head); do grep -P "^$f," submission5a.txt; done
head predictions/1JHC.data_prediction.txt 
wc -l predictions/1JHC.data_prediction.txt 
wc -l predictions/1JHC.data_prediction.txt aaa
for f in $(cat TESTids/1JHC.data_prediction.txt); do grep -P "^$f," submission5a.txt | head -n 1; done > aaa
ls *awk
vi subset.awk 
cp subset.awk tmp.awk
vi tmp.awk 
less submission5a.txt
awk -v FS=, -v subset=TESTids/1JHC.data_prediction.txt submission5a.txt | less
vi tmp.awk 
awk -v FS=, -v subsetFile=TESTids/1JHC.data_prediction.txt submission5a.txt | less
awk -v FS="," -v subsetFile=TESTids/1JHC.data_prediction.txt submission5a.txt | less
awk -v FS="," -v subsetFile=TESTids/1JHC.data_prediction.txt submission5a.txt
awk -v FS="," -v subsetFile="TESTids/1JHC.data_prediction.txt" submission5a.txt
awk -v FS="," -v subsetFile="TESTids/1JHC.data_prediction.txt" -f tmp.awk submission5a.txt
wc -l TESTids/1JHC.data_prediction.txt
vi tmp.awk 
wc -l submission5a.txt
head TESTids/1JHC.data_prediction.txt
head -n 15 TESTids/1JHC.data_prediction.txt
sort -n TESTids/1JHC.data_prediction.txt > xxx
head -n 15 xxx
vi tmp.awk 
awk -v FS="," -v subsetFile="TESTids/1JHC.data_prediction.txt" -f tmp.awk submission5a.txt | head
vi tmp.awk 
awk -v FS="," -v subsetFile="TESTids/1JHC.data_prediction.txt" -f tmp.awk submission5a.txt | head
awk -v FS="," -v subsetFile="xxx" -f tmp.awk submission5a.txt | head
awk -v FS="," -v subsetFile="xxx" -f tmp.awk submission5a.txt > xxx.out
wc -l xxx.out 
less xxx.out 
vi predictions/
ls predictions/
time python train.py 1JHN
ls -ltr predictions/
mv predictions/1JHC.data_prediction.txt .
vi generateSubmission.sh 
mv 1JHC.data_prediction.txt predictions/
ls TESTids/
vi generateSubmission.sh 
mv TESTids/1JHC.data_prediction.txt .
Rscript evaluate.R 
./generateSubmission.sh > submission7a.txt 
./generateSubmission.sh predictions/ > submission7a.txt 
wc -l submission7a.txt 
wc -l submission5a.txt 
vi generateSubmission.sh 
cat submission7a.txt xxx.out | sort -n --field-separator=',' --key=1,1 | less
cat submission7a.txt xxx.out | sort -n --field-separator=',' --key=1,1 > submission7b.txt
wc -l submission7b.txt
head xxx.out
grep 4658148, submission5a.txt submission7*
grep 4658150, submission5a.txt submission7*
vi all7-2JHN.performance 
ls -ltr | tail
ls
mv 1JHC.data_prediction.txt TESTids/
ls TESTids/ | wc -l
ls -ltr | tail
mv submission7b.txt submission7a.txt 
ls -ltr
ls -ltr submission*
vi train.py 
vi results/3/training_output 
ls -ltr
vi all7-2JHC.performance
cp create_feature_list_2JHC.sh create_feature_list_2JHH.sh
vi notes.txt 
time python train.py 1JHN
vi molgeom.py 
vi create_feature_list_2JHH.sh
time python train.py 2JHN
vi train.py 
./create_feature_list_2JHH.sh 
ls -ltr | tail
wc -l feature.list.2JHH
awk -v FS=, '{print NF}' all7A.data | head -n 1000 | sort | uniq -c
vi feature.list.2JHH
vi all7-2JHN.performance 
vi create_feature_list_2JHH.sh 
./create_feature_list_2JHH.sh 
wc -l feature.list.2JHH
vi feature.list.2JHH
ls -ltr *txt
vi molgeom.py 
vi ~/.bash_history 
grep 2JHH all7A.data > all7A_2JHH.data
cut -d, -f 1-913,929-1003,1379-1558 all7A_2JHH.data > all7A_2JHH_filter1.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi results/3/training_output
vi results/4/training_output
vi results/4b/training_output
vi results/3/training_output
ps
ls -ltr data
ls -ltrh data
vi filters.txt 
vi data2/2JHH.data.test 
time python train.py 2JHN
ls -ltr oof/
Rscript evaluate.R 
less data2/2JHH.data.test 
time python train.py 2JHH
vi train.py 
Rscript evaluate.R 
top
vi results/3/training_output 
vi all7-2JHC.performance 
ls all*txt
ls *performance
vi 1JHC.performance 
vi results/3/training_output 
vi results/4/training_output 
vi results/4b/training_output 
vi results/3/training_output 
vi results/4/training_output 
vi notes.txt 
mv abcd notes.txt 
time python train.py 2JHH
ls -ltr TESTids/
mv TESTids/1JHC.data_prediction.txt .
./generateSubmission.sh > submission7b.txt 
./generateSubmission.sh predictions/ > submission7b.txt 
cat submission7b.txt xxx.out | sort -n --field-separator=',' --key=1,1 > submission7c.txt
wc -l submission7*
mv submission7c.txt submission7b.txt
head submission7b.txt submission7a.txt
wc -l submission7a.txt
vi results/4b/training_output 
ls create_feature_list_*
cp create_feature_list_2JHH.sh create_feature_list_3JHx.sh
vi notes.txt 
vi train.py 
vi create_feature_list_3JHx.sh
./create_feature_list_3JHx.sh 3JHN
wc -l feature.list.3JHN 
awk -v FS=, '{print NF}' all7A.data | head -n 1000 | sort | uniq
ls all7*
df -h .
grep 3JHN all7A.data > all7A_3JHN.data
vi molgeom.py 
vi feature.list.3JHN
cut -d, -f 1-1516,1532-1606,2162-2401 all7A_3JHN.data > all7A_3JHN_filter1.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi filters.txt 
ls model-*
ls -ltrh model-*
vi data2/3JHN.data.test 
ls -lh data2/*train
vi results/4b/training_output 
vi results/3/training_output 
top
vi results/4b/training_output 
ls -ltr *performance
vi all6.performance 
vi all7-2JHN.performance 
time python train.py 3JHN
vi all7-2JHC.performance 
vi all7-2JHH.performance 
vi all7-3JHN.performance 
Rscript evaluate.R 
./generateSubmission.sh predictions/ > submission7c.txt
wc -l submission7*
cat submission7c.txt xxx.out | sort -n --field-separator=',' --key=1,1 > submission7d.txt
mv submission7d.txt submission7c.txt
wc -l submission7*
vi ~/.bash_history 
cp create_feature_list_3JHx.sh create_feature_list_3JHH.sh
vi create_feature_list_3JHH.sh 
./create_feature_list_3JHH.sh 
wc -l feature.list.3JHH 
awk -v FS=, '{print NF}' all7A.data | head -n 1000 | sort | uniq
vi feature.list.3JHH
vi molgeom.py 
grep 3JHH all7A.data > all7A_3JHH.data 
vi filters.txt 
cut -d, -f 1-1080,1096-1170,1726-1965 all7A_3JHH.data > all7A_3JHH_filter1.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/3JHH.data.test 
wc -l data2/3JHH.data.test 
ps
ls -ltr data
ls -ltrh data
ps
ls -ltrh data
ls -ltrh data2
vi data2/3JHH.data.test
top
time python train.py 3JHH
./generateSubmission.sh predictions/ > submission7d.txt 
cat submission7d.txt xxx.out | sort -n --field-separator=',' --key=1,1 > submission7e.txt
mv submission7e.txt submission7d.txt
wc -l submission7d.txt
gzip submission7d.txt
vi notes.txt 
vi results/4b/training_output 
ls structures | head
head structures/dsgdb9nsd_000001.xyz
head -n 1 structures/dsgdb9nsd_000001.xyz
for f in structures/*; do head -n 1 $f; done > aaay
less aaay
sort -n aaay | head
sort -n aaay | tail
vi ~/.bash_history 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
vi prepare_data.sh 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | wc -l
./prepare_data.sh 
wc -l errors 
ls ddd | wc -l
ls ddd | wc -l; date
ls ddd | head
for f in $(ls ddd | head); do awk -v FS=, '{print NF}' ddd/$f; done | less
ls ddd | wc -l; date
vi ~/.bash_history 
for f in $(cat random_files_order); do cat ddd/$f; done > all7B.data
vi create_feature_list_1JHN.sh 
./create_feature_list_1JHN.sh 1JHN
wc -l feature.list.1JHN 
for f in $(ls ddd | head); do awk -v FS=, '{print NF}' ddd/$f; done | less
vi create_feature_list_1JHN.sh 
./create_feature_list_1JHN.sh 1JHN
wc -l feature.list.1JHN 
vi notes.txt 
cut -d, -f 1-910,1196-1253 all7B.data > all7B-968.data
vi prepare_data.sh 
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf tmp/* mycache/* model-1JHN.txt 
vi data2/1JHN.data.test 
mkdir results/7
cp -R predictions/ results/7/
vi all6.performance 
time python train.py 1JHN
vi feature.list.1JHN 
vi feature.list.1JHN 
cut -d, -f 1-910,1196-1198,1222-1227,1251-1253 all7B.data > all7B-922.data
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf tmp/* mycache/* model-1JHN.txt 
vi data2/1JHN.data.test
vi all6.performance 
time python train.py 1JHN
vi postprocess_data.sh 
cut -d, -f 1-910,1196,1224-1225,1253 all7B.data > all7B-914.data
./postprocess_data.sh 
rm -Rf tmp/* mycache/* model-1JHN.txt 
time python train.py 1JHN
vi data2/1JHN.data.test
vi all6.performance 
vi ~/.bash_history 
vi filters.txt 
grep 3JHC all7A.data > all7A_3JHC.data
vi postprocess_data.sh 
vi ~/.bash_history
vi postprocess_data.sh 
vi all6.performance 
cut -d, -f 1-1516,1532-1606,2162-2401 all7A_3JHC.data > all7A_3JHC_filter1.data
rm -Rf ddd
df -h .
ls -Srh
ls -lSrh
vi feature_iportance.txt 
vi all6.performance 
ls /media/pmajek/My\ Passport/kaggle/
mkdir /media/pmajek/My\ Passport/kaggle/cells
mv /media/pmajek/My\ Passport/kaggle/* /media/pmajek/My\ Passport/kaggle/cells/
ls /media/pmajek/My\ Passport/kaggle/
mkdir /media/pmajek/My\ Passport/kaggle/chemistry
vi train.py 
df -h .
rm all7A_3JHC_filter1.data
mv all7A_2JHx.data /media/pmajek/My\ Passport/kaggle/chemistry
du -h --max-depth=1 .
rm -Rf ddd_orig/
rm -Rf data/*
du -h --max-depth=1 .
cut -d, -f 1-1516,1532-1606,2162-2401 all7A_3JHC.data > all7A_3JHC_filter1.data
rm -Rf old_labels/
vi postprocess_data.sh 
time python train.py 1JHN
./postprocess_data.sh 
vi train.py 
ps
time python train.py 1JHN
vi all6.performance 
ls -ltrh | tail
ls -ltrh data | tail
ls -ltrh data2 | tail
ls -ltrh data | tail
ls -ltrh data2 | tail
ls -ltrh data | tail
vi data2/3JHC.data.test 
df -h .
time python train.py 3JHC
vi train.py 
time python train.py 3JHC
top
vi notes.txt 
mv model-3JHC.txt model-3JHC-0.01.txt
vi train.py 
time python train.py 3JHC
ls tmp/3JHC.data.train_t*
ls tmp/3JHC.data.train*
awk '{if(NR%2==0) print NR}' tmp/3JHC.data.train_test1.data | less
mkdir tmp_original
mv tmp/3JHC.data.train_t* tmp_original/
awk '{if(NR%2==0) print }' tmp_original/3JHC.data.train_test1.data > tmp/3JHC.data.train_test1.data
awk '{if(NR%2==0) print }' tmp_original/3JHC.data.train_train1.data > tmp/3JHC.data.train_train1.data
rm -Rf mycache/*
vi train.py 
vi results/4b/training_output 
time python train.py 3JHC
vi train.py 
time python train.py 3JHC
ls -ltr
ls -ltrh
cp model-3JHC-0.01.txt model-3JHC.txt
ls -ltr tmp_original/
mkdir tmp_half
mv tmp/3JHC.data.train_t* tmp_half/
cp tmp_original/* tmp/
df -h
df -h .
ls -lSr
ls -lSrh
ls /media/pmajek/My\ Passport/kaggle/chemistry/
ls -lh /media/pmajek/My\ Passport/kaggle/chemistry/
mv all7A.data /media/pmajek/My\ Passport/kaggle/chemistry/
df -h .
cp tmp_original/* tmp/
ls -h model-3JHC*
ls -lh model-3JHC*
mv model-3JHC-0.01.txt model-3JHC-0.01-30K.txt
vi train.py 
vi results/4b/train.py 
time python train.py 3JHC
rm -Rf mycache/*
top
ls -ltrh | tail
ls -ltrh *performance | tail
vi all7-3JHC.performance 
vi all7-3JHH.performance 
vi all6.performance 
mv all6.performance all6-1JHN.performance
vi all7-3JHH.performance 
time python train.py 3JHC
rm -Rf mycache/*
cp tmp_half/* tmp/
35.243.161.177
35.243.161.177
cd kaggle/chemistry/
which python
python --version
time python train.py 3JHC
ls -ltr oof/3JH*
ls -ltr predictions/3JH*
ls -ltr model-*
vi train.py 
vi all7-3JHC.performance 
lsb_release -a
104.154.188.90
time python train.py 3JHC
ll -h tmp/3JHC.data.train_t*
ll -h tmp_half/3JHC.data.train_t*
ll data2/1JNH.data.train
ll data2/1JHN.data.train 
ll -h data2/1JHN.data.t*
mkdir toSend
cp data2/1JHN.data.t* toSend/
cd toSend/
gzip *
ll -h
ls
cd ..
exit
exit
exit
ls
exit
exit
exit
exit
exit
exit
exit
exit
df -h
df -h .
top
time python train.py 3JHC
vi train.py 
time python train.py 3JHC
ls -ltr predictions/
vi train.py 
cp model-3JHC.txt model-3JHC-60K-0.01-0.02.txt
time python train.py 3JHC
vi notes.txt 
exit
vi all7-3JHC.performance 
exit
top
exit
exit
R
exit
vi all6-1JHN.performance 
exit
exit
top
ping google.com
cd kaggle/chemistry/
vi train.py 
mv model-1JHN.txt model-1JHN-last.txt
R
exit
cd kaggle/chemistry/
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi notes.txt 
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
mv model-1JHN.txt model-1JHN-48.txt
python train.py 1JHN
vi all6-1JHN.performance 
mv model-1JHN.txt model-1JHN-32.txt
vi train.py 
python train.py 1JHN
mv model-1JHN.txt model-1JHN-24.txt
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
rm model-1JHN.txt 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
mv model-1JHN.txt model-1JHN-24-0.5.txt
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
mv model-1JHN.txt model-1JHN-24-0.5-l1:2.0.txt
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
vi train.py 
python train.py 1JHN
rm model-1JHN.txt 
python train.py 1JHN
cp model-1JHN-24-0.5-l1\:2.0.txt model-1JHN.txt 
vi train.py 
python train.py 1JHN
cp model-1JHN.txt model-1JHN-24-0.5-l1\:2.0-60K.txt 
vi train.py 
python train.py 1JHN
vi molgeom.py 
vi prepare_data.sh 
df -h .
./prepare_data.sh 
ls ddd | wc -l
vi ~/.bash_history 
ll -ltrh all7*
ll -ltrh all7*.data
ls ddd | wc -l
vi ~/.bash_history 
df -h .
for f in $(cat random_files_order); do cat ddd/$f; done > all7C.data
vi ~/.bash_history 
cut -d, -f 1-910,1196,1224-1225,1253 all7C.data > all7C-914.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model-1JHN.txt tmp/* mycache/*
time python train.py 1JHN
vi train.py 
vi all6-1JHN.performance 
time python train.py 1JHN
vi molgeom.py 
meld all7C-914.data all7B-914.data
cut -d, -f 1-910 all7C.data > all7C-910.data
vi prepare_data.sh 
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf model-1JHN.txt tmp/* mycache/*
vi data2/1JHN.data.test 
time python train.py 1JHN
vi postprocess_data.sh 
vi 1JHN.xxx 
vi postprocess_data.sh 
vi create_feature_list_1JHN.sh 
./create_feature_list_1JHN.sh 1JHN
vi feature.list.1JHN 
wc -l feature.list.1JHN 1JHN.xxx
paste feature.list.1JHN 1JHN.xxx | less
ll feature_iportance.txt 
wc -l feature_iportance.txt
vi create_feature_list_1JHN.sh 
./create_feature_list_1JHN.sh 1JHN
ls -ltr | tail
wc -l feature2_iportance.txt feature3.list
vi create_feature_list_1JHN.sh 
./create_feature_list_1JHN.sh 1JHN > 1JHN.importance
vi 1JHN.importance
vi ~/.bash_history 
sort -t$'\t' -k5 -nr 1JHN.importance | less
vi ~/.bash_history 
python2.7 ./molgeom.py -f XYZ structures2/dsgdb9nsd_000020.xyz | less
vi prepare_data.sh 
diff molgeom.py molgeom_local.py 
./prepare_data.sh 
diff molgeom.py molgeom_local.py 
ls ddd | wc -l
for f in $(cat random_files_order); do cat ddd/$f; done > all7D.data
cut -d, -f 1-910,1196,1224-1225,1253 all7D.data > all7D-914.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi data2/1JHN.data.test 
rm -Rf model-1JHN.txt tmp/* mycache/*
time python train.py 1JHN
vi all6-1JHN.performance 
vi create_feature_list_1JHN.sh 
vi all6-1JHN.performance 
vi create_feature_list_1JHN.sh 
./create_feature_list_1JHN.sh 1JHN > 1JHN.importance2
vi 1JHN.importance2
exit
vi all6-1JHN.performance 
tpo
sort -t$'\t' -k5 -nr 1JHN.importance2 | less
top
exit
top
diff molgeom.py molgeom_local.py 
./prepare_data.sh 
ls ddd | wc -l; date()
ls ddd | wc -l; date
cd /mnt/
ls
vi ~/.bash_history 
df -h .
vi prepare_data.sh 
df -h .
exit
for f in $(cat random_files_order); do cat ddd/$f; done > all7E.data
rm -Rf ddd/
vi prepare_data.sh 
cut -d, -f 1-910,1196,1224-1225,1253 all7E.data > all7E-914.data
vi postprocess_data.sh 
./postprocess_data.sh 
vi notes.txt 
vi data2/1JHN.data.test 
rm -Rf model-1JHN.txt tmp/* mycache/*
time python train.py 1JHN
vi create_feature_list_1JHN.sh 
./create_feature_list_1JHN.sh 1JHN > aaa1 
vi aaa1
vi feature.list.1JHN 
grep "5\.50A" feature.list.1JHN | wc -l
grep "5\.50A" feature.list.1JHN | less
grep -n "5\.50A" feature.list.1JHN | less
grep -vn "5\.50A" feature.list.1JHN | less
grep -vn "5\.50A" feature.list.1JHN | awk -v FS=: '{printf("%s,",$1)}'
ls all7*
awk -d, -f 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,39,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,74,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,109,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,144,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,179,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,214,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,249,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,284,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,319,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,354,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,389,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,424,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914 all7E-914.data > all7E-890.data
cut -d, -f 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,39,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,74,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,109,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,144,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,179,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,214,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,249,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,284,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,319,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,354,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,389,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,424,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914 all7E-914.data > all7E-890.data
vi postprocess_data.sh 
./postprocess_data.sh 
rm -Rf model-1JHN.txt tmp/* mycache/*
time python train.py 1JHN
rm all7E-890.data 
vi feature.list.1JHN 
vi aaa1
vi ~/.bash_history 
sort -t$'\t' -k5 -nr aaa1 | less
cd ../cells/
mv ~/Downloads/train.csv.zip .
ll -h
unzip train.csv.zip 
ls
rm train.csv.zip 
less train.csv 
ll train.csv 
chmod +rwx train.csv 
ll
less train.csv 
cut -f 5 -d train.csv | less
cut -f 5 -d, train.csv | less
cut -f 5 -d, train.csv | sort | uniq -c | sort -rnk1 | less
cut -f 5 -d, train.csv | sort | uniq -c | sort -rnk1 | wc -l
mv ~/Downloads/submission.csv 
mv ~/Downloads/submission.csv .
ls
less submission.csv 
cut -f 2 -d, submission.csv | sort | uniq -c | sort -rnk1 | wc -l
cut -f 2 -d, submission.csv | sort | uniq -c | sort -rnk1 | less
cut -f 2 -d, submission.csv | sort -n | head
cut -f 2 -d, submission.csv | sort -n | tail
vi all6-1JHN.performance 
exit
exit
exit
exit
R
exit
exit
exit
top
df -h
df -h .
exit
df -h .
ls
cd kaggle/
ls
du -h --max-depth=1
cd chemistry/
ls
ls /media/pmajek/My\ Passport/kaggle/chemistry/
ls *data
ls *.data
df -h .
du --max-depth=1 /media/pmajek/My\ Passport/kaggle/cells/
df -h .
mv ~/Downloads/densenet121-pytorch.ipynb .
jupyter notebook
cd ../cells/
mv ../chemistry/densenet121-pytorch.ipynb .
du -h --max-depth=1 /media/pmajek/My\ Passport/kaggle/cells/
vi densenet121-pytorch.py
ls
df -h .
ls -lSr /media/pmajek/My\ Passport/kaggle/cells/
ls -lSr /media/pmajek/My\ Passport/kaggle/cells/train
mkdir densenets
ls
ll -h /media/pmajek/My\ Passport/kaggle/cells/train/train.zip
ll -h ../chemistry/train.zip 
ls
mv densenet121-pytorch.ipynb densenets/
jupyter notebook
ls
ll ~/Downloads/densenet121-pytorch.py 
vi ~/Downloads/densenet121-pytorch.py 
cp ~/Downloads/densenet121-pytorch.py densenets/
ls
vi densenet121-pytorch.py 
rm densenet121-pytorch.py 
ls
mv submission.csv densenets/
ls
ll -h ../chemistry/train.zip 
ls
less train.csv 
ls /media/pmajek/My\ Passport/kaggle/cells/
cp /media/pmajek/My\ Passport/kaggle/cells/test.csv .
df -h .
cp /media/pmajek/My\ Passport/kaggle/cells/train/train.zip .
ll -h ../chemistry/train.zip 
mv *.data /media/pmajek/My\ Passport/kaggle/chemistry/
mv ../chemistry/train.zip .
mkdir train
mv train.zip train
cd train/
ls
cd ../cells/
df -h .
ls train
ls /media/pmajek/My\ Passport/kaggle/cells/train
ls train
unzip train.zip 
du --max-depth=1 -h .
cp /media/pmajek/My\ Passport/kaggle/cells/test/test.zip .
rm -Rf tmp_original/
ls -lSrh
du --max-depth=1 -h .
rm -Rf data/*
du --max-depth=1 -h .
ls tmp_half/
ll -h tmp_half/
ll -h tmp/3JHC.data.train_test1.data
ll -h data2/3JHC.data.train 
