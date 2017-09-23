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

if [ $# != 4 ]; then
echo "$0 [version] [pkgversion] [output]"
exit 1
fi

VERSION=$1
PKGVERSION=$2
DISTRO=$3
OUTPUT=$4

cat > ${OUTPUT} << EOF
dsmrd (${VERSION}-${PKGVERSION}) ${DISTRO}; urgency=low

  * Initial release

 -- Maarten de Wit <info@dsmrd.org>  Thu, 24 Aug 2017 18:28:35 +0200
EOF
