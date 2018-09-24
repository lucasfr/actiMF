touch data/resumDq.dat
touch data/dump.dat

gcc -o mgran mgran.cpp -lm

chmod u+x mgran

for file in data/*.txt
do
./mgran $file tdq tfa -25 25 0.3 9 0.7 0.7 R 2 >> /data/resumDq.dat
mv ${file%.*}.tdq ${file%.*}._-25_25_0.3_9_0.7_0.7_R_2.tdq
mv ${file%.*}.tfa ${file%.*}._-25_25_0.3_9_0.7_0.7_R_2.tfa

./mgran $file tdq tfa -25 25 0.3 9 0.7 0.7 S 2 >> /data/dump.dat
mv ${file%.*}.tdq ${file%.*}._-25_25_0.3_9_0.7_0.7_S_2.tdq
mv ${file%.*}.tfa ${file%.*}._-25_25_0.3_9_0.7_0.7_S_2.tfa
done