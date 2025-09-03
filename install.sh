#!/java/bin/sh 

set BOXME_REPO=raw.githubusercontent.com/mrlima4095/BoxME/refs/heads/main/src/

install nano
tick Downloading BoxME...

execute proxy $BOXME_REPO/boxme.lua; install boxme.lua 

get nano
tick

log add info BoxME have been installed!
echo [ BoxME ] Installation Complete!
echo [ BoxME ] Import 'boxme' to start
