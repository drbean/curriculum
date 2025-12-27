% Trial-and-error extraction of posts from JSON file

I need to be careful of who I accuse of #vendorlockin here, but my failure to export my mastodon toots as plain text, giving up on an attempt to extract them with jq (a great tool) from the JSON glob exported by ActivityPub before, contributes to my support for #POSSE. It doesn't t lessen my appreciation for mastodon and ActivityPub as vendors/brands of the FOSS software I'm grateful for.

But it's kind of lock-in to the Mastodon/ActivityPub environment when the ActivityPub API doesn't provide a way to export individual status/messages either as text or HTML, so you can rePOSSEss them.

What it does provide is a way to more or less move seamlessly from one mastodon instance to another taking your whole setup with you. You can use jq or yq to extract the status content from the rat's nest of JSON in outbox.json. The moving guide at https://docs.joinmastodon.org/user/moving/ shows in the Exporting your information section how to download that archive of your posts.

If the content of old posts changes in outbox.json changes over time, it might be because participants in those posts have removed themselves from mastodon.

In a yq-pandoc-sed pipeline extracting object.id and published fields from the orderedItems list of posts in outbox.json, like 

   `<<< $(yq '.orderedItems.[] | ("id:" + " " + .object.id + " published: " + .published + .object.content )' outbox.json) pandoc -f html -t plain | sed -E 's/^"\s*"?//'  > more_observations.txt`

I got an OK representation of the posts with a URL and date, which I tidied up with vim, and you can see at
[MastodonPostRePOSSEssion](MastodonPostRePOSSEssion.html)

I don't understand how yq handles whitespace. Trial and error was necessay.

Me at
    <form action='https://mastodon.sdf.org/@drbean'>
    <button type='submit' class='btn'>
    <img src='./mastodon.svg'
        alt='https://joinmastodon.org/logos/wordmark-black-text.svg'
        style='width:50px;height:20px'/>
    </button></form>
    
Back to [POSSE](POSSE.html)
