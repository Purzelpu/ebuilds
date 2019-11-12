# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{3,4,5,6} )

inherit distutils-r1

DESCRIPTION="Urlscan parses an email message or file and scans it for URLs."
HOMEPAGE="https://github.com/firecat53/urlscan"
RESTRICT="primaryuri"
SRC_URI="https://www.github.com/firecat53/urlscan/archive/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

RDEPEND=">dev-python/urwid-1.2.1"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	"
