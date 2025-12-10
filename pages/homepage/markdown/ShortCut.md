% Leaving MS Windows as quickly as possible

cygwin's `mkshortcut` creates Windows shortcut icons on the Desktop or in StartUp to invoke cygwin programs the Windows way.

in `C:/Users/Public/Desktop`
and `C:/ProgramData/Microsoft/Windows/Start Menu/Programs/StartUp`
as .lnk files.

With 
`mkshortcut -d "場所: mintty C:/cygwin64" -i /cygdrive/c/cygwin64/Cygwin.ico -A -D -n "Cygwin64 Terminal" -i /cygdrive/c/cygwin64/Cygwin.ico /cygdrive/c/cygwin64/Cygwin.bat`

and

`mkshortcut -a "/usr/bin/bash -l -c 'tt web_-w_sdf qb_-w_qt mastodon' &" -A -P -n "StartUp/web,qb,mastodon" /usr/bin/mintty`

Check `man mkshortcut`


Me at
    <form action='https://mastodon.sdf.org/@drbean'>
    <button type='submit' class='btn'>
    <img src='./mastodon.svg'
        alt='https://joinmastodon.org/logos/wordmark-black-text.svg'
        style='width:90px;height:20px'/>
    </button></form>
    
Back to [HomePage](HomePage.html)
