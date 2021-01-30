all:
	apt source mozc

patch:
	find . -type d -name 'mozc-2*' | \
		xargs -I{} $(MAKE) DIR={} __patch-dir

__patch-dir:
	find patches -type f -name '*.patch' | sort | \
		xargs -I{} $(MAKE) DIR=$(DIR) PATCH={} __patch-file

__patch-file: DRYRUN="--dry-run"
__patch-file:
	patch $(DRYRUN) -N -d $(DIR) -p1 < $(PATCH)

build:
	find . -type d -name 'mozc-2*' | \
		xargs -I{} $(MAKE) DIR={} __build-dir

__build-dir:
	cd $(DIR) && \
		dpkg-buildpackage -us -uc -b

install:
	find . -maxdepth 1 -type f -name 'mozc*.deb' -or -name 'ibus-mozc*.deb' | \
		xargs dpkg -i

clean:
	rm -rf mozc* *.deb *.ddeb

.PHONY: all patch __* build install clean
