#!env bash

OPTIND=1
while getopts 't:s:h:k:' arg
do
case ${arg} in
    t) topic=${OPTARG};;
    s) story=${OPTARG};;
    h) header=${OPTARG};;
    k) kicker=${OPTARG};;
    *) return 1 # illegal option
    esac
done

M="$HOME/curriculum/pages/homepage/markdown"

read post

echo % $header > $M/$story.md
echo >> $M/$story.md
echo $post >> $M/$story.md
echo -e "\n\nMe at
<form action='https://mastodon.sdf.org/@drbean'>
<button type='submit' class='btn'>
<img src='./mastodon.svg'
alt='https://joinmastodon.org/logos/wordmark-black-text.svg'
style='width:100px;height:50px'/>
</button></form>
\nBack to [$topic]($topic.html)" >> $M/$story.md

sed -i.BAK -E "s/^Me at/* [$story]($story.html) $kicker\n\nMe at/" $M/$topic.md

for p in $story $topic
    do pandoc -o c:/cygwin64/tmp/pandoc/$p.html --standalone \
        --template=c:$HOME/curriculum/pages/pandoc-templates/homepagePost.html5 \
       $M/$p.md
done

cd $M 1>&2
for v in svn git ; do $v add $M/$story.md ; done 1>&2
svn ci $M/{$story,$topic}.md -m "$topic:$story with post.sh" 1>&2
cd - 1>&2

lftp -c "lcd /tmp/pandoc && open sftp://drbean@freeshell.org &&
	cd html && put $story.html && put $topic.html && qui"

echo $post
