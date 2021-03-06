# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-themes/mate-icon-theme/mate-icon-theme-1.8.0.ebuild,v 1.4 2014/07/02 09:49:26 pacho Exp $

EAPI="5"

GCONF_DEBUG="no"

inherit gnome2 versionator

MATE_BRANCH="$(get_version_component_range 1-2)"

SRC_URI="http://pub.mate-desktop.org/releases/${MATE_BRANCH}/${P}.tar.xz"
DESCRIPTION="MATE default icon themes"
HOMEPAGE="http://mate-desktop.org"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND=">=x11-themes/hicolor-icon-theme-0.10"

DEPEND="${RDEPEND}
	>=dev-util/intltool-0.40:*
	>=x11-misc/icon-naming-utils-0.8.7:0
	sys-devel/gettext:*
	virtual/pkgconfig:*"

RESTRICT="binchecks strip"

src_configure() {
	gnome2_src_configure --enable-icon-mapping
}

DOCS="AUTHORS NEWS TODO"
