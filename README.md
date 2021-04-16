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

    # install ibus-mozc packages
    sudo make install/ibus
    # install fcitx-mozc packages
    sudo make install/fcitx

PREREQUISITE
------------

* build-essential
* devscripts

SEE ALSO
--------

* https://salsa.debian.org/debian/mozc
