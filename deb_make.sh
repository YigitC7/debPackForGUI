#!/bin/bash

# Değişkenler
PACKAGE_NAME="program name"
PACKAGE_VERSION="1.0"
PACKAGE_DIR="$PACKAGE_NAME-$PACKAGE_VERSION"

# Paket dizinlerini oluştur
mkdir -p "$PACKAGE_DIR/DEBIAN"
mkdir -p "$PACKAGE_DIR/usr/local/bin"
mkdir -p "$PACKAGE_DIR/usr/share/icons"
mkdir -p "$PACKAGE_DIR/usr/local/share/applications"

# Kontrol dosyasını oluştur (boş)
cat << EOF > "$PACKAGE_DIR/DEBIAN/control"
Package: $PACKAGE_NAME
Version: $PACKAGE_VERSION
Section: utils
Priority: optional
Architecture: amd64
Depends: 
Maintainer: you_name <you@email.com>
Description: 
EOF

# Masaüstü dosyasını oluştur (boş)
cat << EOF > "$PACKAGE_DIR/usr/local/share/applications/$PACKAGE_NAME.desktop"
[Desktop Entry]
Version=1.0
Type=Application
Name=Program_name
Exec=/usr/local/bin/micropad/Main
Icon=/usr/local/bin/micropad/icon.png
Terminal=false
Categories=Utility;Application;
EOF

echo "Dizin yapısı oluşturuldu: $PACKAGE_DIR"
echo "Lütfen dosyaları uygun dizinlere yerleştirin."

