# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sec-policy/selinux-howl/selinux-howl-2.20140311-r1.ebuild,v 1.2 2014/04/19 15:51:21 swift Exp $
EAPI="4"

IUSE=""
MODS="howl"
BASEPOL="2.20140311-r1"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for howl"

KEYWORDS="amd64 x86"
