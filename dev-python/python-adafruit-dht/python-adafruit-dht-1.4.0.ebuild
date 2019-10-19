# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python{2_{6,7},3_{3,4,5,6}} )

inherit distutils-r1

DESCRIPTION="Python library for DHT11/DHT22 sensors by Adafruit"
HOMEPAGE="https://github.com/adafruit/Adafruit_Python_DHT"
RESTRICT="primaryuri"
SRC_URI="https://www.github.com/adafruit/Adafruit_Python_DHT/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

RDEPEND=" "

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	"
S=${WORKDIR}/Adafruit_Python_DHT-${PV}/
