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
git clone https://github.com/zuocsfm/travel_data_dashboard.git /odtp/odtp-workdir/travel_data_dashboard
cd /odtp/odtp-workdir/travel_data_dashboard
git checkout cb52abbb503eb8d326a378241366095d01728740


#########################################################
# DATA INPUT
#########################################################

# A2B - Prepare datafolder

# NOT NEEDED
# ln -s /odtp/odtp-input/... /odtp/odtp-workdir/...


#########################################################
# COMMAND TO RUN THE TOOL
#########################################################

# A3 - Run the tool

streamlit run dashboard.py
