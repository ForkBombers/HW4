#!/bin/bash

# Find and kill the infinite.sh process
if pkill -f infinite.sh; then
    echo "Process infinite.sh has been killed."
else
    echo "Process infinite.sh was not found."
fi