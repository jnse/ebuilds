# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit multilib

DESCRIPTION="PERL extension for rxvt-unicode adding support for terminal tabs"
HOMEPAGE="https://github.com/jnse/tabbedex"

EGIT_REPO_URI="https://github.com/jnse/tabbedex.git"
LICENSE="GPL3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="x11-terms/rxvt-unicode[perl]"
RDEPEND="${DEPEND}"

inherit git-r3

src_install() {
	insinto /usr/$(get_libdir)/urxvt/perl
	doins tabbedex
}
