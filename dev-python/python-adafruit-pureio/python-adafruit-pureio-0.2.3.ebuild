# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python{2_{6,7},3_{3,4,5,6}} )

inherit distutils-r1

DESCRIPTION="Pure python (i.e. no native extensions) access to Linux IO including I2C and SPI"
HOMEPAGE="https://github.com/adafruit/Adafruit_Python_PureIO"
RESTRICT="primaryuri"
SRC_URI="https://github.com/adafruit/Adafruit_Python_PureIO/archive/0.2.3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"

RDEPEND=" "

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	"
S=${WORKDIR}/Adafruit_Python_PureIO-${PV}/
