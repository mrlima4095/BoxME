#!/java/bin/sh 

set BOXME_REPO=raw.githubusercontent.com/mrlima4095/main/BoxME/src

install nano
proxy BOXME_REPO/boxme
install boxme 
proxy BOXME_REPO/boxme-suite
install .boxme-suite
proxy BOXME_REPO/boxme-loader
install .boxme-loader
proxy BOXME_REPO/
install