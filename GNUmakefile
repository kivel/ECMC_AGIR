include /ioc/tools/driver.makefile
#include $(EPICS_MODULES)/makeUtils/latest/utils.mk

MODULE=ECMC_AGIR

LIBVERSION = SLS

# build for EPICS_Version >=7 only
EXCLUDE_VERSIONS = 3

# build only for RedHat
ARCH_FILTER = RHEL%

# scripts
SCRIPTS += startup.cmd
SCRIPTS += addGirder.iocsh
SCRIPTS += addGirder_EC1A.iocsh

# config
## EP7211-0034 config for AM8211 Motor
SCRIPTS += cfg/AM8211_AGIR.cfg
## physical axes
SCRIPTS += cfg/axes/AM8122.pax
SCRIPTS += cfg/axes/AM8122_rev.pax
SCRIPTS += cfg/axes/AM8122_EC1A.pax
SCRIPTS += cfg/axes/AM8122_retry.pax
## virutal axes
SCRIPTS += cfg/axes/TY.vax
SCRIPTS += cfg/axes/RX.vax
SCRIPTS += cfg/axes/RZ.vax
## synchronization
### forward kinematics
SCRIPTS += cfg/axes/TY.sax
SCRIPTS += cfg/axes/RX.sax
SCRIPTS += cfg/axes/RZ.sax
### reverse kinematics
SCRIPTS += cfg/axes/M1.1.sax
SCRIPTS += cfg/axes/M1.2.sax
SCRIPTS += cfg/axes/M2.1.sax
SCRIPTS += cfg/axes/M2.2.sax
