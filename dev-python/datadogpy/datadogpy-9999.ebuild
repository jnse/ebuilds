# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=(python{2_7,3_3,3_4,3_4,3_5,3_6})

DESCRIPTION="DataDog python library"
HOMEPAGE="https://github.com/DataDog/datadogpy"

EGIT_REPO_URI="https://github.com/DataDog/datadogpy.git"

LICENSE="Datadog"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
>=dev-python/decorator-3.3.2
>=dev-python/requests-2.6.0
>=dev-python/simplejson-3.0.0
"
RDEPEND="${DEPEND}"

inherit git-r3
inherit distutils-r1
