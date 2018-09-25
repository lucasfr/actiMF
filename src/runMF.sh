# LICENSE

# This software is licensed under an MIT License.

# Copyright (c) 2018 Lucas G S França, Pedro Montoya, José Garcia Vivas Miranda.

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

# Authors: Lucas França(1,2), Pedro Montoya(3), José Garcia Vivas Miranda(1,2)

# 1 Department of Clinical and Experimental Epilepsy, UCL Queen Square Institute 
# of Neurology, University College London, London, United Kingdom

# 2 Department of Physics of the Earth and the Environment, Institute of Physics, 
# Federal University of Bahia, Salvador, Brazil

# 3 Research Institute of Health Sciences (IUNICS), University of the Balearic 
# Islands, Palma de Mallorca, Spain

# email address: lucas.franca.14@ucl.ac.uk, vivasm@gmail.com
# Website: https://lucasfr.github.io/

# COMPILING mgran - CHHABRA-JENSEN MULTIFRACTAL ANALYSIS METHOD ROUTINE
gcc -o mgran mgran.cpp -lm

# CHANGING SETTINGS

chmod u+x mgran

# LOOP OVER ALL FILES IN FOLDER data

########################################################################

# COMMAND TO RUN mgran

# ./mgran file_to_parse q_measures_extension alpha_measures_extension
# -q +q q_steps max_dyadic_scale R2-q R2-alpha summary_or_spectra 
# ignore_scales >> output_file

########################################################################

CREATING SUMMARY FILES
rm data/R/fm/resumDq.dat
rm data/R/hc/resumDq.dat
touch data/R/fm/resumDq.dat
touch data/R/hc/resumDq.dat

rm data/S/fm/resumDq.dat
rm data/S/hc/resumDq.dat
touch data/S/fm/resumDq.dat
touch data/S/hc/resumDq.dat

for file in data/R/fm/*.txt
do

# SUMMARY EXPORT MODE

./mgran $file tdq.txt tfa.txt -25 25 0.3 9 0.7 0.7 R 2 >> data/R/fm/resumDq.dat
mv ${file%%.*}.tdq.txt ${file%%.*}._-25_25_0.3_9_0.7_0.7_R_2.tdq.txt
mv ${file%%.*}.tfa.txt ${file%%.*}._-25_25_0.3_9_0.7_0.7_R_2.tfa.txt

done


for file in data/R/hc/*.txt
do

# SUMMARY EXPORT MODE

./mgran $file tdq.txt tfa.txt -25 25 0.3 9 0.7 0.7 R 2 >> data/R/hc/resumDq.dat
mv ${file%%.*}.tdq.txt ${file%%.*}._-25_25_0.3_9_0.7_0.7_R_2.tdq.txt
mv ${file%%.*}.tfa.txt ${file%%.*}._-25_25_0.3_9_0.7_0.7_R_2.tfa.txt

done


for file in data/S/fm/*.txt
do

# SPECTRA MODE

./mgran $file tdq tfa -25 25 0.3 9 0.7 0.7 S 2 >> data/S/fm/resumDq.dat
mv ${file%%.*}.tdq ${file%%.*}._-25_25_0.3_9_0.7_0.7_S_2.tdq.txt
mv ${file%%.*}.tfa ${file%%.*}._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt

done

for file in data/S/hc/*.txt
do

# SPECTRA MODE

./mgran $file tdq tfa -25 25 0.3 9 0.7 0.7 S 2 >> data/S/hc/resumDq.dat
mv ${file%%.*}.tdq ${file%%.*}._-25_25_0.3_9_0.7_0.7_S_2.tdq.txt
mv ${file%%.*}.tfa ${file%%.*}._-25_25_0.3_9_0.7_0.7_S_2.tfa.txt

done