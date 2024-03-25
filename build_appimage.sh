#!/bin/bash

VERSION="1.1.14"

mkdir atomes-appimage
cd atomes-appimage

BUILD=1

if [ $BUILD -eq 1 ]; then
  wget https://github.com/Slookeur/Atomes-GNU/archive/refs/tags/v$VERSION.tar.gz
  tar -zxf v$VERSION.tar.gz
  mv Atomes-GNU-$VERSION atomes-$VERSION
  cd atomes-$VERSION 
  cp ../../atomes-appimage-build/atomes-AppImageBuilder.yml .
  mkdir AppDir
  ./configure --prefix=/usr
  make -j 12
  make install DESTDIR=$PWD"/AppDir"
fi

GETAPP=1
if [ $GETAPP -eq 1 ]; then
  wget -O appimage-builder-x86_64.AppImage https://github.com/AppImageCrafters/appimage-builder/releases/download/v1.1.0/appimage-builder-1.1.0-x86_64.AppImage
  chmod +x appimage-builder-x86_64.AppImage
  # install (optional)
  # sudo mv appimage-builder-x86_64.AppImage /usr/local/bin/appimage-builder
fi

# ./appimage-builder-x86_64.AppImage --generate
./appimage-builder-x86_64.AppImage --recipe ./atomes-AppImageBuilder.yml 
