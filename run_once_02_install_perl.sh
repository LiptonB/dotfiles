#!/bin/sh

. ./.env

# Pre-install perl from source to avoid bundle issues
# Perl does not install well, yet is required by many bundles
# See: https://github.com/Homebrew/linuxbrew-core/issues/4808
# This is because glibc removed xlocale.h in 2.26 (https://sourceware.org/glibc/wiki/Release/2.26#Removal_of_.27xlocale.h.27)
# See also: https://bugzilla.redhat.com/show_bug.cgi?id=1464244
brew install --build-from-source perl