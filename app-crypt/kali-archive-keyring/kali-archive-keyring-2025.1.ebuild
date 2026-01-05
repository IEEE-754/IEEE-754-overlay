# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="GnuPG archive keys of the Kali archive"
HOMEPAGE="https://www.kali.org"
SRC_URI="https://http.kali.org/pool/main/${PN:0:1}/${PN}/${PN}_${PV}.tar.xz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="amd64"

src_compile() {
	emake V=1 kali-archive-keyring.gpg
}

src_install() {
	insinto /usr/share/openpgp-keys/
	doins kali-archive-keyring.gpg
}
