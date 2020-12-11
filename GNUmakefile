include /ioc/tools/driver.makefile
#include $(EPICS_MODULES)/makeUtils/latest/utils.mk

MODULE=AGIR

LIBVERSION = IBS

# build for EPICS_Version >=7 only
EXCLUDE_VERSIONS = 3

# build only for RedHat
ARCH_FILTER = RHEL%

# scripts
SCRIPTS += startup.cmd
SCRIPTS += addGirder.iocsh

# config
## physical axes
SCRIPTS += cfg/axes/AM8122.pax
## virutal axes
SCRIPTS += cfg/axes/TY.vax
SCRIPTS += cfg/axes/RX.vax
SCRIPTS += cfg/axes/RZ.vax
## synchronization
SCRIPTS += cfg/axes/TY.sax
SCRIPTS += cfg/axes/RX.sax
SCRIPTS += cfg/axes/RZ.sax
SCRIPTS += cfg/axes/M1.1.sax
SCRIPTS += cfg/axes/M1.2.sax
SCRIPTS += cfg/axes/M2.1.sax
SCRIPTS += cfg/axes/M2.2.sax
