#!/bin/bash
for i in 1 5
do
for j in 4 5 6 7
do
make
make run
make clean
mv Cell.cpp Cellc.txt;
let ja=$j+1
let jb=2**$j
let jc=2**$ja
sed -i 's/'maxNumLevelLTP=$jb'/'maxNumLevelLTP=$jc'/' Cellc.txt;
sed -i 's/'maxNumLevelLTD=$jb'/'maxNumLevelLTD=$jc'/' Cellc.txt;
mv Cellc.txt Cell.cpp;
done

mv Cell.cpp Cellc.txt;
sed -i 's/'maxNumLevelLTP=256'/'maxNumLevelLTP=16'/' Cellc.txt;
sed -i 's/'maxNumLevelLTD=256'/'maxNumLevelLTD=16'/' Cellc.txt;
mv Cellc.txt Cell.cpp;
mv Cell.cpp Cellc.txt;
sed -i 's/'maxNumLevelLTP=256'/'maxNumLevelLTP=16'/' Cellc.txt;
sed -i 's/'maxNumLevelLTD=256'/'maxNumLevelLTD=16'/' Cellc.txt;
mv Cellc.txt Cell.cpp;

mv Cell.cpp Cellc.txt;
let ia=$i+4
sed -i 's/'NL_LTP=$i'/'NL_LTP=$ia'/' Cellc.txt;
sed -i 's/'NL_LTD=$i'/'NL_LTD=$ia'/' Cellc.txt;

mv Cellc.txt Cell.cpp
done
      
