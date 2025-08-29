#!env bash

topic=HomePage
story=CommonPlace
M="$HOME/curriculum/pages/homepage/markdown"
declare mastodon

sed -E '/Me at/,$d' $M/$story.md
echo >> $M/$story.md

echo -n "_$(date  +'%m-%d %k:%M')_ " >> $M/$story.md

while IFS= read -r post ; do
    mastodon+=$post
    echo $post >> $M/$story.md
done

echo $mastodon
echo >> $M/$story.md

echo -e "\n\nMe at
<form action='https://mastodon.sdf.org/@drbean'>
<button type='submit' class='btn'>
<img src='./mastodon.svg'
alt='https://joinmastodon.org/logos/wordmark-black-text.svg'
style='width:75px;height:20px'/>
</button></form>
\nBack to [$topic]($topic.html)" >> $M/$story.md

for p in $story $topic
    do pandoc -o c:/cygwin64/tmp/pandoc/$p.html --standalone \
        --template=c:$HOME/curriculum/pages/pandoc-templates/git/homepagePost.html5 \
       $M/$p.md
done

cd $M 1>&2
for v in svn git ; do $v add $M/{$topic,$story}.md ; done 1>&2
svn ci $M/{$story,$topic}.md -m "$topic:$story with comment.sh" 1>&2
cd - 1>&2

lftp -c "lcd /tmp/pandoc && open sftp://drbean@freeshell.org &&
	cd html && put $story.html && put $topic.html && qui"
