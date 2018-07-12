# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
EGO_PN="github.com/hashicorp/packer"

DESCRIPTION="Packer is a tool for creating identical machine images for multiple platforms from a single source configuration."
HOMEPAGE="https://www.packer.io/"

LICENSE="MPL2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-lang/go dev-go/gox"
RDEPEND="${DEPEND}"

inherit golang-vcs

src_compile() {
	mkdir -p "${HOME}/go/bin/"
	pushd src/github.com/hashicorp/packer
	export XC_OS="linux"
	export XC_ARCH="amd64"
	export PACKER_DEV="1"
	go get github.com/hashicorp/go-checkpoint
	go get github.com/hashicorp/packer/command
	go get github.com/kardianos/osext
	go get github.com/mitchellh/cli
	go get github.com/mitchellh/panicwrap
	go get github.com/mitchellh/prefixedio
	scripts/build.sh
	popd
}

src_install() {
	dobin "${HOME}/go/bin/packer"
}
