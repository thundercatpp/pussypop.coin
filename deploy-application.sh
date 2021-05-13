#!/bin/bash
logDirectory="./logs/"
mkdir -p $logDirectory 
logFile="$logDirectory$(date +"%Y_%m_%d_%I_%M_%p").log"
echo "Piping output to $logFile"

./_deploy-app.sh "\n" > $logFile 2>&1
cat $logFile
read -p "Press enter to close window ..."