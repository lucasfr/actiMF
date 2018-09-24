# LICENSE

# This software is licensed under an MIT License.

# Copyright (c) 2018 Lucas G S França, José Garcia Vivas Miranda.

# Permission is hereby granted, free of charge, to any person obtaining a 
# copy of this software and associated documentation files (the "Software"), 
# to deal in the Software without restriction, including without limitation 
# the rights to use, copy, modify, merge, publish, distribute, sublicense, 
# and/or sell copies of the Software, and to permit persons to whom the 
# Software is furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included 
# in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
# DEALINGS IN THE SOFTWARE.

# Authors: Lucas França(1,2), YJosé Garcia Vivas Miranda(1,2)

# 1 Department of Clinical and Experimental Epilepsy, UCL Queen Square Institute 
# of Neurology, University College London, London, United Kingdom

# 2 Institute of Physics, Federal University of Bahia, Salvador, Brazil

# email address: lucas.franca.14@ucl.ac.uk, vivasm@gmail.com
# Website: https://lucasfr.github.io/

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