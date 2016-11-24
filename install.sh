#!/usr/bin/env bash
set -e
wget -O ydownloader https://raw.githubusercontent.com/pwittchen/ydownloader/master/ydownloader
chmod +x ydownloader 
sudo mv ydownloader /usr/local/bin/ydownloader 
