#!/bin/bash
version="0.055"
#
# duplicate virgin with new name
# use existing
# no security
#
# pflint
#
apt-get update
#
apt-get install git
#
apt-get install gh
#
git clone https://github.com/flintiii/bin.git

# can docker duplicate virtuals
## Not gonna get new
## not gonna have access control
dpkg --get-selections > packages_$(date +%F)-0
apt-get update
apt-get install git
dpkg --get-selections > packages_$(date +%F)-1
diff --suppress-common-lines packages_2023-02-23-0 packages_2023-02-23-1
