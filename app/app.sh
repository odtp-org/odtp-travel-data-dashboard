#!/bin/bash

############################################################################################
# START OF MANUAL CONFIGURATION. 
# ADAPT THE TEMPLATE HERE.
############################################################################################

source "/odtp/odtp-component-client/src/shell/log.sh"
source "/odtp/odtp-component-client/src/shell/traceback.sh"

#########################################################
# GITHUB CLONING OF REPO
#########################################################

# Actions
# A1 - Clone github
odtp::print_info "Clone the  tool repo 'https://github.com/zuocsfm/OD_data_dashboard.git'"
git clone https://$GITHUB_USERNAME:$GITHUB_TOKEN@github.com/zuocsfm/OD_data_dashboard.git /odtp/odtp-workdir/OD_data_dashboard 1> /dev/null

odtp::print_info "Move into the working directory"
cd /odtp/odtp-workdir/OD_data_dashboard 1> /dev/null

odtp::print_info "Checkout commit '86bf7bdc63196'"
git checkout 86bf7bdc631961ac05c976fc280e78d93d666d02 1> /dev/null

#########################################################
# DATA INPUT
#########################################################

# A2B - Prepare datafolder
if [ "$DATA_INPUT_OPTION" == "CUSTOM" ] && [ -n "$DATA_INPUT_PATH" ]; then
    ln -s "/odtp/odtp-input/$DATA_INPUT_PATH" /odtp/odtp-workdir/OD_data_dashboard/data/origin-destination.csv
    odtp::print_info "Take input data from  /odtp/odtp-input/$DATA_INPUT_PATH"
else
    echo "Take data as provided by the tool"
fi

#########################################################
# COMMAND TO RUN THE TOOL
#########################################################

# A3 - Run the tool

odtp::print_info "Starting app. App is persistent: Should be available at the port mapping."
streamlit run dashboard.py
