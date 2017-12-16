#!/bin/bash

clear
cat << EOF
 _______  _______  _______  ___   _  _______  _______  _______         ___   _______ 
|       ||   _   ||       ||   | | ||   _   ||       ||       |       |   | |       |
|    _  ||  |_|  ||       ||   |_| ||  |_|  ||    ___||    ___| ____  |   | |_     _|
|   |_| ||       ||       ||      _||       ||   | __ |   |___ |____| |   |   |   |  
|    ___||       ||      _||     |_ |       ||   ||  ||    ___|       |   |   |   |  
|   |    |   _   ||     |_ |    _  ||   _   ||   |_| ||   |___        |   |   |   |  
|___|    |__| |__||_______||___| |_||__| |__||_______||_______|       |___|   |___|  
EOF

echo ""
echo "Here we go..."
version="1.1.9"
d="oocoin-${version}"
mkdir $d
mkdir $d/gui

ddat="/tmp/cleandb"

cp build/release/src/simplewallet $d/.
cp build/release/src/oocoin $d/.
cp ../cryptonotewallet/build/oocoin $d/gui/.

echo "./oocoin --data-dir $ddat" > $d/start
echo "rm -rf $ddat && mkdir $ddat && ./oocoin --data-dir $ddat" > $d/startclean

tar cvf $d.tar $d


