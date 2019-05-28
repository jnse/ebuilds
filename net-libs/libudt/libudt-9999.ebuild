# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="UDP-based Data Transfer library."
HOMEPAGE="http://udt.sourceforge.net"

EGIT_REPO_URI="https://git.code.sf.net/p/udt/git.git"
EGIT_BRANCH="master"
EGIT_CHECKOUT_DIR="${WORKDIR}/${PN}-${PV}"

LICENSE="LGPL"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

inherit git-r3

src_compile() {
    cd udt4
	#CFLAGS="${CFLAGS} -L${WORKDIR}/${PN}-${PV}/udt4/src"
	#CXXFLAGS="${CXXFLAGS} -L${WORKDIR}/${PN}-${PV}/udt4/src"
	emake -j1
	#emake
}

src_install() {
    mkdir -p include/udt
	cp udt4/src/*.h include/udt/.
	mkdir lib
	cp udt4/src/*.so lib
	cp udt4/src/*.a lib
	mkdir bin
	dobin udt4/app/appclient
	dobin udt4/app/appserver
	dobin udt4/app/recvfile
	dobin udt4/app/sendfile
	doheader -r include/*
	dolib lib/*.so
	dolib.a lib/*.a
}
