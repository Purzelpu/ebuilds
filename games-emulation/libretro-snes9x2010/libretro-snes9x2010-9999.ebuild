# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/snes9x2010"
inherit libretro-core
KEYWORDS="~amd64 ~arm ~x86"

DESCRIPTION="Snes9x libretro port"
LICENSE="Snes9x GPL-2 GPL-2+ LGPL-2.1 LGPL-2.1+ ISC MIT ZLIB Info-ZIP"
RESTRICT="bindist"
SLOT="0"

src_install() {
	insinto "${LIBRETRO_DATA_DIR}"/snes9x2010_libretro
	doins "${S}"/docs/snes9x-license.txt
	libretro-core_src_install
}
