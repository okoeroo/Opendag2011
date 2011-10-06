#!/bin/sh


# Dev
# Documents

SOURCE="."
DESTHOST="stropdassen.haatik.nl"
DESTPATH="/home/www-data/oscar/nikhefwebapp/"

SOURCE="/Users/okoeroo/dvl/webapps/opendag2011/www/."
DESTHOST="login2.nikhef.nl"
DESTPATH="/www/od11/"


scp -r \
      $SOURCE $DESTHOST:$DESTPATH

exit $?


rsync --partial --verbose --progress --stats \
      -S \
      -z \
      -e ssh \
      --exclude ".git" \
      $SOURCE $DESTHOST:$DESTPATH

