#!/bin/bash
awk  '!/-ms-|-webkit-/' $1 > temp && mv temp new.css
perl -pi -e 's/([+-]?([0-9]*[.])?[0-9]+)px/xl($1)/g' new.css
