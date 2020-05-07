# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{3,4,5,6,7,8} )

inherit distutils-r1

DESCRIPTION="Python library for general GPIO access by Adafruit"
HOMEPAGE="https://github.com/adafruit/Adafruit_Python_GPIO"
RESTRICT="primaryuri"
SRC_URI="https://pypi.io/packages/source/A/Adafruit_GPIO/Adafruit_GPIO-1.0.3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

RDEPEND="dev-python/python-adafruit-pureio"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	"
S=${WORKDIR}/Adafruit_GPIO-${PV}/
PATCHES=( ${FILESDIR}/notests.patch )
