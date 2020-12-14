include /ioc/tools/driver.makefile
#include $(EPICS_MODULES)/makeUtils/latest/utils.mk

MODULE=ECMC_AGIR

LIBVERSION = dev

# build for Linux only
BUILDCLASSES = Linux

# build for EPICS_Version >=7 only
EXCLUDE_VERSIONS = 3

# build only for RedHat
ARCH_FILTER = RHEL%

# scripts
SCRIPTS += startup.cmd
#SCRIPTS += addGirder.iocsh

# config
## axes
#SCRIPTS += cfg/axes/AM8122.pax
