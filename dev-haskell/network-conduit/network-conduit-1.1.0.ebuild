# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/network-conduit/network-conduit-1.1.0.ebuild,v 1.1 2014/07/02 11:55:28 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.3.6.9999
#hackport: flags: -network-bytestring

CABAL_FEATURES="lib profile"
inherit haskell-cabal

DESCRIPTION="Stream socket data using conduits. (deprecated)"
HOMEPAGE="http://github.com/snoyberg/conduit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/conduit-1.1:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"