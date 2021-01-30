mozc-patch-build
================

Patch, build, and install `mozc` packages for Ubuntu Linux

Applying patches:

* Activate Hiragana input at launch
  * http://dakusui.hatenablog.com/entry/2017/09/24/160400

HOW TO USE
----------

    # get apt source
    make all

    # dry-run applying patches
    make patch

    # apply patches
    make patch DRYRUN=

    # build deb packages
    make build

    # install packages
    sudo make install

PREREQUISITE
------------

* build-essential
* devscripts
