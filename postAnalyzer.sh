./Make.sh postAnalyzer.C

#./postAnalyzer_etau.exe /nfs_scratch/jmadhusu/CMSSW_9_4_9_cand2/src/monoHiggs/Data_2017/Data_2017.root files_etau_initial/Data.root data_obs data_obs 0 
#./postAnalyzer_etau.exe /nfs_scratch/jmadhusu/CMSSW_9_4_9_cand2/src/monoHiggs/Data_2017/Dataset1.root files_etau_initial/Data_dataset1.root dataset_1 dataset_1 0
#./postAnalyzer_etau.exe /nfs_scratch/jmadhusu/CMSSW_9_4_9_cand2/src/monoHiggs/Data_2017/Dataset2.root files_etau_initial/Data_dataset2.root dataset_2 dataset_2 0
#./postAnalyzer_etau.exe /nfs_scratch/jmadhusu/CMSSW_9_4_9_cand2/src/monoHiggs/Data_2017/Dataset3.root files_etau_initial/Data_dataset3.root dataset_3 dataset_3 0
#./postAnalyzer_etau.exe /nfs_scratch/jmadhusu/CMSSW_9_4_9_cand2/src/monoHiggs/Data_2017/Dataset4.root files_etau_initial/Data_dataset4.root dataset_4 dataset_4 0
#./postAnalyzer_etau.exe /nfs_scratch/jmadhusu/CMSSW_9_4_9_cand2/src/monoHiggs/Data_2017/Dataset5.root files_etau_initial/Data_dataset5.root dataset_5 dataset_5 0
#monoHiggs/MC_sf/MC_2017
#################### MC ###############################

./postAnalyzer.exe /data/strembat/WZ2017/MC/WZTo3LNu_0Jets_histfile.root files_initial/WZTo3LNu_0Jets.root WZTo3LNu_0Jets WZ 0

#################### Data #############################

./postAnalyzer.exe /data/strembat/WZ2017/data/2017B_SingleMuon_histfile.root files_initial/2017B_SingleMuon.root data_obs data_obs 0

#./postAnalyzer.exe /data/strembat/WZtest17/WZsignal17skim.root files_initial/WZTo3LNu.root WZTo3LNu WZ 0

hadd -f f_initial.root files_initial/*.root

echo "*************** root file made ***************"

sh do_plots.sh
#python makeplot.py Cutflow _ events eachlevel -logYaxis logy
#python makeplot.py Events_level_ _ events eachlevel -logYaxis logy
#python makeplot.py MET _0  MET '_' -logYaxis logy

echo "*************** plots made ***************"
