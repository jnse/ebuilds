EAPI=6

DESCRIPTION="Kernel module and userland tools for taking block-level snapshots and backups."
HOMEPAGE="http://www.datto.com"

if [[ ${PV} = *9999 ]]; then
	EGIT_REPO_URI="https://github.com/datto/dattobd.git"
	EGIT_BRANCH="master"
	EGIT_CHECKOUT_DIR="${WORKDIR}/${PN}-${PV}"
	inherit git-r3
else
	SRC_URI="https://github.com/datto/${PN}/archive/v${PV}.zip"
fi

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="net-misc/rsync dev-lang/perl"

MODULE_NAMES="dattobd(extra:${S}:${S}/src)"
BUILD_TARGETS="clean all"

inherit linux-info linux-mod

pkg_setup() {
	linux-mod_pkg_setup
}

src_configure() {
	set_arch_to_kernel
}

src_compile() {
	emake
}

src_install() {
	mkdir -p include/dattobd
	cp src/*.h include/dattobd/.
	cp lib/*.h include/dattobd/.
	doheader -r include/*
	dolib lib/*.so
	dolib.a lib/*.a
	dosbin app/dbdctl
	dosbin utils/update-img
	linux-mod_src_install

}

pkg_postinst() {
	linux-mod_pkg_postinst
}
