# ----------------------------------------------------------------------------
#
# Package       : babelify
# Version       : 8.0.0
# Source repo   : https://github.com/babel/babelify.git
# Tested on     : rhel_7.4
# Script License: Apache License, Version 2 or later
# Maintainer    : Snehlata Mohite <smohite@us.ibm.com>
#
# Disclaimer: This script has been tested in non-root mode on given
# ==========  platform using the mentioned version of the package.
#             It may not work as expected with newer versions of the
#             package and/or distribution. In such case, please
#             contact "Maintainer" of this script.
#
# ----------------------------------------------------------------------------
#!/bin/bash

WDIR=`pwd`
sudo yum update -y
sudo yum install -y git wget openssl-devel.ppc64le
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh| sh
source ~/.nvm/nvm.sh
nvm install stable
nvm use stable
cd $WDIR
git clone https://github.com/babel/babelify.git
cd $WDIR/babelify
npm install && npm test
