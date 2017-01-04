#!/bin/bash
#
# Install solc 
#

set -e
set -u

mkdir -p solc-versions/solc-0.4.1
cd solc-versions/solc-0.4.1
git clone --recurse-submodules --branch v0.4.1 --depth 50 https://github.com/ethereum/solidity.git
./solidity/scripts/install_deps.sh
wget https://github.com/ethereum/solidity/releases/download/v0.4.1/solidity-ubuntu-trusty.zip
unzip solidity-ubuntu-trusty.zip
echo "Solidity installed at $TRAVIS_BUILD_DIR/solc-versions/solc-0.4.1/solc"
tree $TRAVIS_BUILD_DIR/solc-versions/solc-0.4.1
