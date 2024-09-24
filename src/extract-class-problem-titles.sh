#!/usr/bin/env bash

cd $1

ls *.java | sed -r 's/([A-Z])/_\1/g' | sed -e 's/_/## /' -e 's/_/ /g' -e 's/.java/\n/' -e s'/  /: /'

