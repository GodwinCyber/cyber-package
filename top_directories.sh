#!/bin/bash

echo -e "Show top 5 Directories and their size: \n "

du -h --max-depth=1 | head -n 5 
