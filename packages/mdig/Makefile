include $(TOPDIR)/rules.mk

PKG_NAME:=mdig
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/bol-van/zapret.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=dccf672d8a9f4a0ba7e671eb1eadd52f9ce7b4d3
MAKE_PATH:=mdig

include $(INCLUDE_DIR)/package.mk

define Package/mdig
	SECTION:=net
	CATEGORY:=Network
	TITLE:=mdig
	SUBMENU:=Zapret
endef

define Build/Prepare
	$(Build/Prepare/Default)
	rm $(PKG_BUILD_DIR)/$(MAKE_PATH)/mdig
endef

define Package/mdig/install
	$(INSTALL_DIR) $(1)/opt/zapret/mdig
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/$(MAKE_PATH)/mdig $(1)/opt/zapret/mdig
endef

$(eval $(call BuildPackage,mdig))
