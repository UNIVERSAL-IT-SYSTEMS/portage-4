# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Class-Mix/Class-Mix-0.5.0-r1.ebuild,v 1.1 2014/08/26 18:38:27 axs Exp $

EAPI=5
MODULE_AUTHOR=ZEFRAM
MODULE_VERSION=0.005
inherit perl-module

DESCRIPTION='dynamic class mixing'
LICENSE=" || ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-lang/perl
	dev-perl/Params-Classify
	virtual/perl-Exporter
	virtual/perl-parent
"
DEPEND="
	${RDEPEND}
	virtual/perl-Module-Build
	virtual/perl-Test-Simple
"

SRC_TEST="do"
