#!/bin/bash

############################################################################################
# START OF MANUAL CONFIGURATION. 
# ADAPT THE TEMPLATE HERE.
############################################################################################

#########################################################
# GITHUB CLONING OF REPO
#########################################################

# Actions
# A1 - Clone github
git clone https://$GITHUB_USERNAME:$GITHUB_TOKEN@github.com/zuocsfm/OD_data_dashboard.git /odtp/odtp-workdir/OD_data_dashboard
cd /odtp/odtp-workdir/OD_data_dashboard
git checkout 86bf7bdc631961ac05c976fc280e78d93d666d02


#########################################################
# DATA INPUT
#########################################################

# A2B - Prepare datafolder
if [ "$DATA_INPUT_OPTION" == "STORAGE" ] && [[ -v STORAGE_INPUT_PATH ]]; then
    ln -s /odtp/odtp-input/$INPUT_PATH /odtp/odtp-workdir/OD_data_dashboard/data/origin-destination.csv
else
    echo "Data is taken as provided by the tool"

#########################################################
# COMMAND TO RUN THE TOOL
#########################################################

# A3 - Run the tool

streamlit run dashboard.py
