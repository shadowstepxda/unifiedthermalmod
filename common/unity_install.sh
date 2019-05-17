#Copy appropriate thermal configuration file based on detected android version
if [ $API -eq 23 ]; then
  ui_print " "
  ui_print "- Android version detected: Marshmallow"
  ui_print " "
  ui_print "- Copying appropriate thermal configuration"
  ui_print " "
  cp -f $TMPDIR/conf/marshmallow/thermal-engine.conf $TMPDIR/system/etc/thermal-engine.conf
elif [ $API -eq 24 ] || [ $API -eq 25 ]; then
  ui_print " "
  ui_print "- Android version detected: Nougat"
  ui_print " "
  ui_print "- Copying appropriate thermal configuration"
  ui_print " "
  cp -f $TMPDIR/conf/nougat/thermal-engine.conf $TMPDIR/system/etc/thermal-engine.conf
elif [ $API -eq 26 ] || [ $API -eq 27 ]; then
  ui_print " "
  ui_print "- Android version detected: Oreo"
  ui_print " "
  ui_print "- Copying appropriate thermal configuration"
  ui_print " "
  cp -f $TMPDIR/conf/oreo/thermal-engine.conf $TMPDIR/system/etc/thermal-engine.conf
else
  ui_print " "
  ui_print "- Android version detected: Pie"
  ui_print " "
  ui_print "- Copying appropriate thermal configuration"
  ui_print " "
  cp -f $TMPDIR/conf/pie/thermal-engine.conf $TMPDIR/system/etc/thermal-engine.conf
fi
