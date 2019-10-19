# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Cross-platform, sophisticated frontend for the libretro API"
HOMEPAGE="http://www.libretro.com"
SRC_URI="https://github.com/libretro/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/RetroArch-${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="wayland"

RDEPEND=" wayland? ( media-libs/libsdl2[wayland] )"
DEPEND="${RDEPEND}
	x11-base/xorg-proto"
BDEPEND="virtual/pkgconfig"

src_configure() {
	 ${ECONF_SOURCE:-.}/configure \
                                     ${CBUILD:+--build=${CBUILD}} \
                                     --host=${CHOST} \
                                     --prefix="${EPREFIX}"/usr \
                                     --mandir="${EPREFIX}"/usr/share/man \
                                     --sysconfdir="${EPREFIX}"/etc \
                                     ${CTARGET:+--target=${CTARGET}} \
                                     ${EXTRA_ECONF} \
									 $(use_enable wayland) \
                                     || die "econf failed"
}
