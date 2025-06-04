# Copyright (C) 2022-2025 xiaorouji
#
# This is free software, licensed under the GNU General Public License v3.

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-passwall2
PKG_VERSION:=25.5.15
PKG_RELEASE:=1

PKG_CONFIG_DEPENDS:= \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_SingBox

LUCI_TITLE:=LuCI support for PassWall 2 (Sing-Box only)
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+coreutils +coreutils-base64 +coreutils-nohup +curl \
	+ip-full +libuci-lua +lua +luci-compat +luci-lib-jsonc +resolveip +tcping \
	+sing-box +geoview +v2ray-geoip +v2ray-geosite +unzip

define Package/$(PKG_NAME)/config
menu "Configuration"

config PACKAGE_$(PKG_NAME)_INCLUDE_SingBox
	bool "Include Sing-Box"
	select PACKAGE_sing-box
	default y

endmenu
endef

define Package/$(PKG_NAME)/conffiles
/etc/config/passwall2
/etc/config/passwall2_server
/usr/share/passwall2/domains_excluded
/www/luci-static/resources/qrcode.min.js
endef

include $(TOPDIR)/feeds/luci/luci.mk
