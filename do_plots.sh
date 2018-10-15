#!/bin/bash

channels='eee eem emm mmm'
for chan in $channels

do
    echo $chan
    
    python makeplot.py Energy $chan Energy GeV
    python makeplot.py Phi $chan '#phi'
    python makeplot.py Eta $chan '#eta'
    python makeplot.py Pt $chan pT GeV



done

#python makeplot.py Events_level_ _ events eachlevel -logYaxis logy
#python makeplot.py Cutflow _ events eachlevel -logYaxis logy 

