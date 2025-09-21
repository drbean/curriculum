#!env bash

topic=HomePage
story=CommonPlace
M="$HOME/curriculum/pages/homepage/markdown"
declare stdout post

record_date=$(sed -nE '3s/^## ([-0-9]+)$/\1/p' $M/$story.md)
date_now=$(date +%Y-%m)

if [[ $record_date != $date_now ]]; then
    sed -i.BAK -e "3i\
## $date_now\
\
" $M/$story.md
fi

date=$(date  +'%m-%d %k:%M')
post="_${date}_ "

while read -r line ; do
    stdout+="$line\n"
    post+="$line\n"
done

title="$(sed -nE "1s/^_${date}_ (([[:graph:]]+[[:blank:]]+){5}).*$/\1/p" <<< $post)"

sed -i.BAK -e "4a$post\n\n" $M/$story.md

for p in $story $topic
    do pandoc -o c:/cygwin64/tmp/pandoc/$p.html --standalone \
        --template=c:$HOME/curriculum/pages/pandoc-templates/git/homepagePost.html5 \
       $M/$p.md
done
pandoc -t plain <<< "$stdout"

cd $M 1>&2
for v in svn git ; do $v add $M/{$topic,$story}.md ; done 1>&2
svn ci $M/{$story,$topic}.md -m "$story: $title" 1>&2
cd - 1>&2

lftp -c "lcd /tmp/pandoc && open sftp://drbean@freeshell.org &&
	cd html && put $story.html && put $topic.html && qui"
