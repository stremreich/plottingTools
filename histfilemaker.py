#!/usr/bin/env python
import ROOT
import re
from array import array
from sys import argv
import csv
from math import sqrt
from math import pi

ROOT.gROOT.SetBatch(True)

inputname=argv[1]
outputname=argv[2]

print "Reading branches in file ", inputname
print "Outputting histogram file named ", outputname

infile=ROOT.TFile(inputname)
outfile=ROOT.TFile(outputname, "RECREATE")

drawBranches = ["Energy",
                "Eta",
                "Phi",
                "Pt"]

for chan in ["eee", "eem", "emm", "mmm"]:
    drawTree = infile.Get(chan+"/ntuple")
    outfile.mkdir(chan)
    outfile.cd(chan)

    for branch in drawBranches:
        drawTree.Draw(branch+">>"+branch)


outfile.Write()

infile.cd("metaInfo")
oldDir = infile.Get("metaInfo")
oldDir.ReadAll()
outfile.mkdir("metaInfo")
outfile.cd("metaInfo")
oldDir.GetList().Write()
