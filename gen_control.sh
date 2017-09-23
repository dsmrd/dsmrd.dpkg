#!/bin/sh
#
# DSMRd - Dutch Smart Meter Requirements Daemon
# Copyright (C)2017  M.J. de Wit <info@dsmrd.org>
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#

if [ $# != 1 ]; then
echo blub
exit 1
fi

SOURCE=dsmrd
SECTION=contrib/net
PRIORITY=optional
MAINTAINER="Maarten de Wit <info@dsmrd.org>"
HOMEPAGE="http://dsmrd.org"
OUTPUT=$1


cat > ${OUTPUT} << EOF
Source: ${SOURCE}
Section: ${SECTION}
Priority: ${PRIORITY}
Maintainer: ${MAINTAINER}
Build-Depends: debhelper (>=9),autotools-dev
Standards-Version: 3.9.7
Homepage: ${HOMEPAGE}
#Vcs-Git: git://anonscm.debian.org/collab-maint/dsmrd.git
#Vcs-Browser: https://anonscm.debian.org/cgit/collab-maint/dsmrd.git

Package: dsmrd
Architecture: any
Depends: \${shlibs:Depends}, \${misc:Depends}
Description: Dutch Smart Meter Requirements Daemon
 Used to monitor Dutch electricity net.
EOF
