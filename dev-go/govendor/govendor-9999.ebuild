# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="The Vendor Tool for Go"
HOMEPAGE="https://github.com/kardianos/govendor"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-lang/go"
RDEPEND="${DEPEND}"

EGO_PN="github.com/kardianos/govendor"
inherit golang-vcs
#inherit golang-build

src_compile()
{
	go get github.com/kardianos/govendor/cliprompt
	go get github.com/kardianos/govendor/help
	pushd src/github.com/kardianos/govendor
	go build
}

src_install()
{
	dobin src/github.com/kardianos/govendor/govendor
}
