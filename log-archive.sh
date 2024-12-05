#!/bin/bash

#vars
timestamp=$(date +%Y%m%d_%H%M%S)
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

if [ -z "$1" ]; then
    echo " Please provide a directory!"
    exit 1
fi

directory=$1

if [ -d "$directory" ]; then
    echo "Archiving $directory"
    tar -cvzf "$directory"_"$timestamp".tar.gz "$directory" 
    echo -e "Archive Status:                    ${GREEN}COMPLETE!"
else
    echo -e "${RED}Error: ${NC} "$directory" is not valid directory"
    exit 1
fi

