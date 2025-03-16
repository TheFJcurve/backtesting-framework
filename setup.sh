#!/bin/bash

projectDir=$(git rev-parse --show-toplevel)
frontendDir="$projectDir/frontend"
backendDir="$projectDir/backend"
currentDir=$(pwd)

# Setting up the frontend
cd "$frontendDir" 
npm i

# Setting up the backend
cd "$backendDir" 
python3.9 -m venv venv 
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

cd "$currentDir"
