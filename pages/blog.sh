#!env bash

topic=HomePage
story=CommonPlace
M="$HOME/curriculum/pages/homepage/markdown"
stdout=''
story=''

date="$(date  +'%m-%d %k:%M')"

header="<!--
aliases: [ "http://niftybytes.blogspot.com/2018/04/proxy-pac-file-for-work_30.html", ]
date: 2018-04-30T12:42:00+05:30
draft: false
published: true
filters: <path to your filter>
format: markdown
id:
lastmod: 2018-04-30T12:47:37+05:30
publishdate: 2018-04-30T12:42:00+05:30
tags: [any, comma, separated, labels]
title: $date
-->
"
# story=$header

while IFS= read -r post ; do
    stdout+=$post
    story+=$post
done

title="$(sed -nE "1s/^(([[:graph:]]+[[:blank:]]+){4}).*$/\1/p" <<< $story )"
html="$(pandoc -f markdown -t html <<< $story )"
# html="$story"

easyblogger -v INFO --blogid 7043542124747063255 post -t "$title" -c "$html" --publish 1>&2

echo $stdout
