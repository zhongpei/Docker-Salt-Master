#!/bin/bash

#
# Salt-Master Run Script
#
service salt-master stop

set -e

# Log Level
LOG_LEVEL=${LOG_LEVEL:-"error"}

# Run Salt as a Deamon
exec sudo /usr/bin/salt-master --log-level=$LOG_LEVEL
