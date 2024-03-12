WIFI_RTL8188FU_SITE_METHOD = git
WIFI_RTL8188FU_SITE = https://github.com/openipc/realtek-wlan
WIFI_RTL8188FU_VERSION = $(shell git ls-remote $(WIFI_RTL8188FU_SITE) rtl8188fu | head -1 | cut -f1)

WIFI_RTL8188FU_LICENSE = GPL-2.0
WIFI_RTL8188FU_LICENSE_FILES = COPYING

WIFI_RTL8188FU_MODULE_MAKE_OPTS = \
	CONFIG_RTL8188FU=m \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))
