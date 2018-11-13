#!/bin/bash

match=".root"
word="_histfile"

echo "Running on data:"
for filename in /data/strembat/WZ2017/data/*.root; do
    [ -e "$filename" ] || continue
    if [[ $filename != *_histfile.root ]];
    then
	outname=${filename%%"${match}"*}${word}${filename#*"${filename%%"${match}"*}"}
	echo "running histfilemaker.py on $filename..."
	python histfilemaker.py "$filename" "${outname}"
    else
	echo "$filename is a histfile, skipping..."
    fi
done

echo "Running on MC:"
for filename in /data/strembat/WZ2017/MC/*.root; do
    [ -e "$filename" ] || continue
    if [[ $filename != *_histfile.root ]];
    then
	outname=${filename%%"${match}"*}${word}${filename#*"${filename%%"${match}"*}"}
	echo "running histfilemaker.py on $filename..."
	python histfilemaker.py "$filename" "${outname}"
    else
	echo "$filename is a histfile, skipping..."
    fi
done
