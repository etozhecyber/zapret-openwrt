include $(TOPDIR)/rules.mk

PKG_NAME:=ip2net
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/bol-van/zapret.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=dccf672d8a9f4a0ba7e671eb1eadd52f9ce7b4d3
MAKE_PATH:=ip2net

include $(INCLUDE_DIR)/package.mk

define Package/ip2net
	SECTION:=net
	CATEGORY:=Network
	TITLE:=ip2net
	SUBMENU:=Zapret
endef

define Build/Prepare
	$(Build/Prepare/Default)
	rm $(PKG_BUILD_DIR)/$(MAKE_PATH)/ip2net
endef

define Package/ip2net/install
	$(INSTALL_DIR) $(1)/opt/zapret/ip2net
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/$(MAKE_PATH)/ip2net $(1)/opt/zapret/ip2net
endef

$(eval $(call BuildPackage,ip2net))
