#!env bash

FILE=$1

#!sed -f
#

# [[:space:]] delimits URL

# # replace all 'http' in URLs with 'Þ'
# s/http\(s?:[[:graph:]]*\)\([[:blank:]]\)/Þ\1\2/pg
# 
# # print lines without 'Þ'
# /^[^Þ]*$/p
# 
# # replace all 'Þ' with 'http'
# /Þ/s/\([^Þ]*\)Þ\(s?:[[:graph:]]*\)\([[:blank:]]\)/\1[http\2](http\2)\3/g

sed -i.BAK -nE 's/http(s?:[[:graph:]]*)([[:blank:]])/Þ\1\2/g ; /^[^Þ]*$/p ; s/([^Þ]*)Þ(s?:[[:graph:]]*)([[:blank:]])/\1[http\2](http\2)/pg' $FILE
