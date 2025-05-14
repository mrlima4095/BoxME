#!/java/bin/sh 

set BOXME_REPO=raw.githubusercontent.com/mrlima4095/BoxME/refs/heads/main/src/

install nano
tick Downloading BoxME...

execute proxy $BOXME_REPO/boxme; install boxme 
execute proxy $BOXME_REPO/boxme-cfg; install .boxme-cfg
execute proxy $BOXME_REPO/boxme-suite; install .boxme-suite
execute proxy $BOXME_REPO/boxme-loader; install .boxme-loader
execute proxy $BOXME_REPO/README.html; install .boxme-README

get nano
tick

log add info BoxME have been installed!
echo [ BoxME ] Installation Complete!
echo [ BoxME ] Import 'boxme' to start
