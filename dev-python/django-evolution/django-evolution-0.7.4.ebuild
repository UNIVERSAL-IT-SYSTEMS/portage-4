# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/django-evolution/django-evolution-0.7.4.ebuild,v 1.1 2014/09/22 06:49:41 idella4 Exp $

EAPI=5

# This is now py3 compatible however is only re'd for Djblets which is py2.7 compat only
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

MY_PN=${PN/-/_}
MY_P=${MY_PN}-${PV}
RELEASE="0.7"

DESCRIPTION="A Django application that will run cron jobs for other django apps"
HOMEPAGE="http://code.google.com/p/django-evolution/ http://pypi.python.org/pypi/django_evolution/"
SRC_URI="http://downloads.reviewboard.org/releases/${PN}/${RELEASE}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-python/django[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
		dev-python/setuptools[${PYTHON_USEDEP}]
		test? ( dev-python/nose[${PYTHON_USEDEP}] )"

S=${WORKDIR}/${MY_P}
DOCS=( NEWS docs/{evolution.txt,faq.txt} )
#DISTUTILS_IN_SOURCE_BUILD=1

python_test() {
	# Draws 1 trivial fail under django django-1.4.x
	"${PYTHON}" tests/runtests.py || die
}
