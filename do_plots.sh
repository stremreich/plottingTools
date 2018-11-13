#!/bin/bash

channels='eee eem emm mmm'
for chan in $channels

do
    echo $chan
    
    python makeplot.py Energy $chan 'Total Energy' GeV
    python makeplot.py Phi $chan '#phi'
    python makeplot.py Eta $chan '#eta'
    python makeplot.py Pt $chan pT GeV
    python makeplot.py Mass $chan M_{3l} GeV
    python makeplot.py etajj $chan '#eta_{jj}'
    python makeplot.py mjj $chan M_{jj} GeV
    python makeplot.py nJets $chan nJets



done

#python makeplot.py Events_level_ _ events eachlevel -logYaxis logy
#python makeplot.py Cutflow _ events eachlevel -logYaxis logy 

