% Under cover of clipboard

Lost in translation

Copy and paste via the clipboard from the browser to a screen mintty terminal session, non-breaking spaces, (U+00A0) were turning into ASCII spaces (U0020). (But also to Windows 'cmd')

I couldn't see! Not hiding in plain sight, but not quacking like a duck, either. 'curl' spoke the truth, saving to a file.

The culprit is the browser, clipboard, screen or mintty?

Apparently this is a 15-year known browser bug. A #knownbug.
[https://stackoverflow.com/questions/47135608/no-break-spaces-are-turned-into-normal-spaces-after-copy-paste](https://stackoverflow.com/questions/47135608/no-break-spaces-are-turned-into-normal-spaces-after-copy-paste)

    echo -ne '\xa0\x20' | hexdump -X

is your friend.

Me at
<form action='https://mastodon.sdf.org/@drbean'>
<button type='submit' class='btn'>
<img src='./mastodon.svg'
alt='https://joinmastodon.org/logos/wordmark-black-text.svg'
style='width:80px;height:20px'/>
</button></form>

Back to [WYSInotWYG](WYSInotWYG.html)
