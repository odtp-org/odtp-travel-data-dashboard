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
git clone https://github.com/zuocsfm/OD_data_dashboard.git /odtp/odtp-workdir/OD_data_dashboard
cd /odtp/odtp-workdir/OD_data_dashboard
git checkout 86bf7bdc631961ac05c976fc280e78d93d666d02


#########################################################
# DATA INPUT
#########################################################

# A2B - Prepare datafolder
if [ "$DATA_INPUT_OPTION" == "CUSTOM" ] && [ -n "$DATA_INPUT_PATH" ]; then
    ln -s /odtp/odtp-input/"$DATA_INPUT_PATH" /odtp/odtp-workdir/OD_data_dashboard/data/origin-destination.csv
else
    echo "Data is taken as provided by the tool"
fi

#########################################################
# COMMAND TO RUN THE TOOL
#########################################################

# A3 - Run the tool

streamlit run dashboard.py
