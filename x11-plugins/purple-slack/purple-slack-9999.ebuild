# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A Slack protocol plugin for libpurple IM clients."
HOMEPAGE="https://github.com/dylex/slack-libpurple"

LICENSE="GPL2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

EGIT_REPO_URI="https://github.com/dylex/slack-libpurple.git"

inherit git-r3
