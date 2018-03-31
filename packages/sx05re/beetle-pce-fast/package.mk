################################################################################
#      This file is part of LibreELEC - http://www.libreelec.tv
#      Copyright (C) 2016 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="beetle-pce-fast"
PKG_VERSION="39185a6"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MAME"
PKG_SITE="https://github.com/libretro/beetle-pce-fast-libretro"
PKG_URL="https://github.com/libretro/beetle-pce-fast-libretro/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="beetle-pce-fast-libretro-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="xmedia/games"
PKG_SHORTDESC="libretro-beetle-pce-fast"
PKG_LONGDESC="libretro-beetle-pce-fast"
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
PKG_TOOLCHAIN="make"
make_target() {
  make ARCH="" CC="$CC" NATIVE_CC="$CC" LD="$CC" -j 1
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/libretro
    cp `find . -name "*.so" | xargs echo` $INSTALL/usr/lib/libretro/
}
