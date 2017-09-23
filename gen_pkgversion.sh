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

version=$1
config=config.ini

pkgversion=`crudini --get ${config} "$version" pkgversion 2>/dev/null`
if [ $? != 0 ]; then
  pkgversion=0
fi
pkgversion=`expr "$pkgversion" + 1`
crudini --set ${config} "$version" pkgversion "$pkgversion"
echo $pkgversion
