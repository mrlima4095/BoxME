#!/java/bin/sh 

set BOXME_REPO=raw.githubusercontent.com/mrlima4095/BoxME/refs/heads/main/src/

install nano
tick Downloading BoxME...
proxy BOXME_REPO/boxme
install boxme 
proxy BOXME_REPO/boxme-suite
install .boxme-suite
proxy BOXME_REPO/boxme-loader
install .boxme-loader
proxy BOXME_REPO/README.html
install .boxme-README
tick

log add info BoxME have been installed!
echo [ BoxME ] Installation Complete!
echo [ BoxME ] Import 'boxme' to start