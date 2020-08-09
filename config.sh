MODID=draekko.microg_a5_a7_2017_microg_mod

AUTOMOUNT=true

PROPFILE=false

POSTFSDATA=false

LATESTARTSERVICE=false

print_modname() {
  ui_print "******************************"
  ui_print " microg_a5_a7_2017_microg_mod "
  ui_print "           Draekko            "
}

REPLACE="
/system/framework/services.jar
/system/framework/oat/arm64/services.odex
/system/framework/oat/arm64/services.vdex
/system/framework/oat/arm64/services.art
"

set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0644
}
