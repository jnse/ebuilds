# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=(python2_7)

DESCRIPTION="pritunl client"
HOMEPAGE="https://pritunl.com/"

EGIT_REPO_URI="https://github.com/pritunl/pritunl-client.git"
# S=${WORKDIR}/${P}/${PN}

LICENSE="Pritunl"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
>=dev-python/pycrypto-2.6.1
>=dev-python/requests-2.11.1
dev-python/pygobject:2
>=dev-python/pygtk-2.24.0-r4
"
RDEPEND="${DEPEND}"

inherit git-r3
inherit distutils-r1
