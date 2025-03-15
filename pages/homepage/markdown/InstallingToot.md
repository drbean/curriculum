% Generic python installation procedure, perhaps

I'm not a python person, so I had to try some things to install the python toot mastodon cli tool. To make it easier next time:

1. pull from the upstream ihabunet/toot github repo,
2. make clean, to remove previous build config,
3. make, to build the wheel,
4. run 'python -m pip install dist/toot-0.45.1.dev4+g89ea460.d20241105-py3-none-any.whl', because pip isn't installed.

New instructions:

1. git clone git@github.com:ihabunek/toot.git
1. cd toot
1. python3 -m venv .venv
1. source .venv/bin/activate
1. pip install .

Available in .venv/bin/toot

https://github.com/ihabunek/toot/discussions/503

Me at
<form action='https://mastodon.sdf.org/@drbean'>
<button type='submit' class='btn'>
<img src='./mastodon.svg'
alt='https://joinmastodon.org/logos/wordmark-black-text.svg'
style='width:100px;height:50px'/>
</button></form>

Back to [ComputerProgramming](ComputerProgramming.html)
