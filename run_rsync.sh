#!/bin/sh


# Dev
# Documents

SOURCE="."
DESTHOST="stropdassen.haatik.nl"
DESTPATH="/home/www-data/oscar/nikhefwebapp/"

DESTHOST="login2.nikhef.nl"
DESTPATH="/www/od11/"

rsync --verbose --progress --stats \
      -a \
      -S \
      -z \
      -e ssh \
      --exclude ".git" \
      --exclude ".*swp" \
      $SOURCE $DESTHOST:$DESTPATH

