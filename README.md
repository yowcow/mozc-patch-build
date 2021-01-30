ubuntu-mozc
===========

Patch, build, and install `mozc` for Ubuntu

Paches:

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
