# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit linux-mod

DESCRIPTION="Razer Kernel Drivers for Linux"
HOMEPAGE="https://openrazer.github.io/"
SRC_URI="https://github.com/${P}/${P}/archive/v${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"

BUILD_TARGETS="clean driver"
BUILD_PARAMS="-j1 -C ${S} SUBDIRS=${S}/driver"
MODULE_NAMES="
	razerkbd(hid:${S}/driver)
	razermouse(hid:${S}/driver)
	razermousemat(hid:${S}/driver)
	razerkraken(hid:${S}/driver)
	razermug(hid:${S}/driver)
	razercore(hid:${S}/driver)
"

src_install() {
	linux-mod_src_install
}
