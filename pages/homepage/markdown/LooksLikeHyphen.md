% No representation without identification

I couldn't understand why

    'export -f which'

in .bashrc was erroring, with

    'bash: export: ‐f: not a valid identifier'.

I had copied and pasted from 'man which'.

I finally checked the byte value of '-' without really thinking, or expecting that What You See Is NOT What You Get, though I've had that experience with the characters on the screen not being the ones I thought I was seeing before. 

Turns out 'man which' was giving me,

    <‐> 8208, Hex 2010, Oct 20020, Digr -1

not

    <->  45,  Hex 2d,  Octal 055.

Syntax highlighting changed with the change, showing that was my answer.

A particular instance of a general problem reading computer output.

Me at
    <form action='https://mastodon.sdf.org/@drbean'>
    <button type='submit' class='btn'>
    <img src='./mastodon.svg'
        alt='https://joinmastodon.org/logos/wordmark-black-text.svg'
        style='width:90px;height:20px'/>
    </button></form>
    
Back to [WYSInotWYG](WYSInotWYG.html)
