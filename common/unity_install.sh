if [ $API -eq 23 ]; then
  cp -f $TMPDIR/marshmallow/thermal-engine.conf $TMPDIR/system/etc/thermal-engine.conf
else
  if [ $API -eq 24 ] || [ $API -eq 25 ]; then
    cp -f $TMPDIR/nougat/thermal-engine.conf $TMPDIR/system/etc/thermal-engine.conf
  fi
fi
