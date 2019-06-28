#####################################################################################
#
#Yekert SmartHome GateWay
#
####################################################################################
YK_GATEWAY_VERSION = 1.0
YK_GATEWAY_SITE = $(TOPDIR)/package/yk_gateway/src
YK_GATEWAY_SITE_METHOD = local

define YK_GATEWAY_INSTALL_TARGET_CMDS
#	mkdir -p $(TARGET_DIR)/usr/app/smarthome
#	mkdir -p $(TARGET_DIR)/usr/app/sys_update
	$(INSTALL) -D -m 755 $(TOPDIR)/package/yk_gateway/tools/fw_env.config $(TARGET_DIR)/etc
	$(INSTALL) -D -m 755 $(TOPDIR)/package/yk_gateway/tools/fw_printenv $(TARGET_DIR)/usr/bin
	
	$(INSTALL) -D -m 755 $(TOPDIR)/package/yk_gateway/S90gateway $(TARGET_DIR)/etc/init.d
	$(INSTALL) -D -m 755 $(TOPDIR)/package/yk_gateway/libs/libudev.so.1 $(TARGET_DIR)/usr/lib

#	$(INSTALL) -D -m 755 $(TOPDIR)/package/aml_yekert/src/* $(TARGET_DIR)/usr/app/smarthome/
#	$(INSTALL) -D -m 755 $(TOPDIR)/package/aml_yekert/sys_update/* $(TARGET_DIR)/usr/app/sys_update/
endef

$(eval $(generic-package))
