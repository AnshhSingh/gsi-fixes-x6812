##########################################################################################
#
# Magisk Module Template Config Script
# by topjohnwu
#
##########################################################################################
##########################################################################################
#
# Instructions:
#
# 1. Place your files into system folder (delete the placeholder file)
# 2. Fill in your module's info into module.prop
# 3. Configure the settings in this file (config.sh)
# 4. If you need boot scripts, add them into common/post-fs-data.sh or common/service.sh
# 5. Add your additional or modified system properties into common/system.prop
#
##########################################################################################

##########################################################################################
# Configs
##########################################################################################

# Set to true if you need to enable Magic Mount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=false

##########################################################################################
# Installation Message
###################################################################################

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# Check the documentations for more info about how Magic Mount works, and why you need this

###########################################################################
# Make sure the Path is correct
REPLACE="
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  # Only some special files require specific permissions
  # The default permissions should be good enough for most cases

  # The following is default permissions, DO NOT remove
  set_perm_recursive  $MODPATH  0  0  0755  0644
  
  # Make sure the Path is correct
  # set_perm  $MODPATH/
  # then you place the path
  # set_perm  $MODPATH/system/etc/mixer_paths.xml
  # the permissions are --- rw- r-- r-- which is 0644
  
  set_perm_recursive  $MODPATH/system/vendor/bin/perfd       0       0       0755       0644
  set_perm_recursive  $MODPATH/system/vendor/bin/msm_irqbalance       0       0       0755       0644
  set_perm_recursive  $MODPATH/system/vendor/bin/energy-awareness       0       0       0755       0644
  set_perm_recursive  $MODPATH/system/vendor/bin/adsprpcd       0       0       0755       0644
  set_perm_recursive  $MODPATH/system/vendor/bin/hw/android.hardware.power@1.1-service.x2       0       0       0755       0644
  set_perm_recursive  $MODPATH/system/vendor/bin/thermal-engine       0       0       0755       0644

}

##########################################################################################
# Custom Functions
##########################################################################################

# This file (config.sh) will be sourced by the main flash script after util_functions.sh
# If you need custom logic, please add them here as functions, and call these functions in
# update-binary. Refrain from adding code directly into update-binary, as it will make it
# difficult for you to migrate your modules to newer template versions.
# Make update-binary as clean as possible, try to only do function calls in it.

