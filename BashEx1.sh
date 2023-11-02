#! /bin/bash

cd /Users/jacopocarotenuto/Documents/Università/LaboratoryOfComputationalPhysics
mkdir students
cd students
wget https://www.dropbox.com/s/867rtx3az6e9gm8/LCP_22-23_students.csv
touch PoD.txt Physics.txt
grep PoD LCP_22-23_students.csv > Pod.txt 
grep Physics LCP_22-23_students.csv > Physics.txt 
echo "Students separated by Course"
t=0
l="a"
echo "Letter Counting variables created"
for i in {a..z}; do
echo "Students starting with $i"
grep -c -i "^[$i]" LCP_22-23_students.csv
a=$(grep -c $i LCP_22-23_students.csv)
if [ "$a" -gt "$t" ];
	then t="$a"; l=$i;
fi
done
echo "The letters $l appears the most. It appears $t times"
