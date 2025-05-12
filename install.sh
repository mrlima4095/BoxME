#!/java/bin/sh 

set BOXME_REPO=raw.githubusercontent.com/mrlima4095/main/BoxME/src

install nano
tick Downloading BoxME...
proxy BOXME_REPO/boxme
install boxme 
proxy BOXME_REPO/boxme-suite
install .boxme-suite
proxy BOXME_REPO/boxme-loader
install .boxme-loader
tick


log add BoxME have been installed!
echo [ BoxME ] Installation Complete!
echo [ BoxME ]