% Array of 4 10s with perl, bash

### perl

    drbean@ESPRIMO ~/dot
    $ perl -e "@X=(10)x4; $,= ; print @X"
    10 10 10 10

### bash

    drbean@ESPRIMO ~/dot
    $ x=($(printf "10 %.0s" {0..3}))
    
    drbean@ESPRIMO ~/dot
    $ echo ${x[*]}
    10 10 10 10

perl is the winner!

A nicer bash way is

    drbean@ESPRIMO ~/dot
    $ x=($(yes 10 | head -n 4 | tr '\n' ' '))

Me at
    <form action='https://mastodon.sdf.org/@drbean'>
    <button type='submit' class='btn'>
    <img src='./mastodon.svg'
        alt='https://joinmastodon.org/logos/wordmark-black-text.svg'
        style='width:100px;height:50px'/>
    </button></form>
    
Back to 
[AssigningSameValuedPerlBashArrays](AssigningSameValuedPerlBashArrays.html)
