#!/bin/bash

cd ~/nodejs-cicd-app || exit

echo "Pulling latest code..."
git pull origin main

echo "Installing dependencies..."
npm install

echo "Restarting app..."

# Stop old process
pkill node

# Start new app
nohup node app.js > output.log 2>&1 &
