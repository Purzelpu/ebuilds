# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2_{6,7} )

inherit distutils-r1

DESCRIPTION="Mopidy is an extensible music server written in Python."
HOMEPAGE="https://mopidy.com/"
RESTRICT="primaryuri"
SRC_URI="https://files.pythonhosted.org/packages/26/a5/499eaabc7d60dd10ee90376ff232800d86f21b656f8d11cfb2048067e293/Mopidy-2.3.1.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

RDEPEND=">=media-libs/gstreamer-1.2.3
		dev-python/gst-python
		media-plugins/gst-plugins-meta
		www-servers/tornado
		dev-python/pykka"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	"
S=${WORKDIR}/Mopidy-${PV}
