#!/bin/bash

# Define log file with timestamp
LOGFILE="/tmp/overcloud_$(date +%F_%H-%M-%S).log"

# Start the overcloud deployment in background with nohup
nohup openstack overcloud deploy --templates \
  -e node-count.yaml \
  -e single-node-network-environment.yaml \
  -r roles_data.yaml \
  -e containers-prepare-parameters.yaml \
  -e user-data.yaml \
  > "$LOGFILE" 2>&1 < /dev/null &

# Print log location and process info
echo "Overcloud deployment started in the background."
echo "Logs: $LOGFILE"
echo "Use 'tail -f $LOGFILE' to follow the progress."
