# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/persistent-sqlite/persistent-sqlite-1.2.1-r1.ebuild,v 1.2 2014/07/25 09:16:19 slyfox Exp $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Backend for the persistent library using sqlite3"
HOMEPAGE="http://www.yesodweb.com/book/persistent"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="systemlib"

RDEPEND=">=dev-haskell/aeson-0.5:=[profile?]
		>=dev-haskell/conduit-0.5.3:=[profile?]
		>=dev-haskell/monad-control-0.2:=[profile?]
		>=dev-haskell/monad-logger-0.2.4:=[profile?]
		=dev-haskell/persistent-1.2*:=[profile?]
		>=dev-haskell/text-0.7:=[profile?]
		>=dev-haskell/transformers-0.2.1:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		systemlib? ( >=dev-db/sqlite-3.0
		)"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

PATCHES=("${FILESDIR}"/${P}-pthread.patch)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag systemlib systemlib)
}
