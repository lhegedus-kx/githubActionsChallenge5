#!/bin/bash
set -e

echo "arg1: $1"

#if trigger is push
if $1 == "push"; then 
    date = $(date)
    echo "push  trigger arrived at $date"
    echo "date=$date" >> $GITHUB_OUTPUT
else
    echo "not a proper trigger"
fi
