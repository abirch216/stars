#! /bin/bash

# for x in "${release[@]}" 
# do
# cp -r $x .
# echo "$x copied"
# done

release=(classes/*)

releasefolder=~/Documents/testscript/classes
xml="meta.xml"
cd ..
cd master
master=(classes/*)

for x in "${release[@]}" 
do
echo ---"$x"---
  for y in "${master[@]}"
  do
  echo ---"$y"---
    if [ "$x-$xml" == "$y" ]
      then
        echo "$x-$xml and $y MATCH!"
        cp "$y" $releasefolder
    fi
  done
done
