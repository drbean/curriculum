% Plug pulled on Subversion

### December 6 during brownout

https://github.blog/changelog/2023-11-06-subversion-brownouts/

igithub is conducting its final svn brownout now, with 5 more hours to go.

From https://github.blog/changelog/2023-11-06-subver
sion-brownouts/

A 24 hour period beginning December 5, 2023 at 10:00
UTC / 2:00am Pacific and ending at the same time on
December 6

Trying to commit my svn working copy changes to github:

"GitHub has temporarily disabled Subversion support
as part of a planned brownout
in order to give you advance notice of the upcoming
permanent removal of
Subversion support on 2024-01-08.

Please see https://github.blog/2023-01-20-sunsetting
-subversion-support/ for details."

What to do?

Perhaps the thing to do is to set up a (lot of)
local svn repos on the machine I'm on, and make each
repo a clone of a github repo.

I can't do this with

	svnrdump dump https://github.com/owuser/app | svndump load > /var/svn/repos/app

Github  was only returning one change set.

Or perhaps I can mirror my github repos on OSDN or
sourceforge subversion repos.

### Deceber countdown to final curtain

Anyway, this is
[vendor lock-in](https://en.wikipedia.org/wiki/Vendor_lock-in)
but to drive off github in a huff would be to cut off my nose to spite my face.

I'm happy with github as a backend. I just want to use subversion on the command line.

I don't know how many subversion users are left on github. Probably not many, and probably only solitary hackers. My repos with upstreams I'm using git, too, I think.

### January 8 as support pulled

I gave up on getting a useable history dump from github with svnrdump.
It's just producing one revision, the first one in the list.
And for the others, 'svnrdump: E200007: The requested report is unknown.'

They didn't say what time on January 8, they are going to be pulling support.
Presumably, it's locked and loaded.
When they all get in the office on the West Coast?
Or 0000 UTC?
It's not yet that time here.

Here's a script someone put some time into writing:
https://stackoverflow.com/questions/18522284/

Earlier stackoverflow note saying the git-svn repo can pull from a remote origin git repo:
https://stackoverflow.com/questions/11148755/

### January 15 post-support-pull

I wrote a little (120-line) wrapper script to
continue using svn with github.
cool
For some fun at git's expense, I called it
'gitwrap_svn', and committed it with the message,
'When going git is tough, subversion gets it going,'
at https://github.com/drbean/dot/blob/master/bash/gitwrap_svn.sh

It copies changes from my old github-checked-out wc
to a different wc where it commits them to a svn
repo on the local machine and also to a git repo
where it pushes them to github.
To avoid going down a rabbit hole scripting svn
subcommands, I need to do my development in a wc
checked out from the local svn repo, and push
changes to github with post-commit hooks perhaps.]

### January 18

I retired my script to commit changes from parallel
svn and git directories to github, finding .svn and
.git will play nicely together co-existing in the same dir.
I commit with svn to a local svn repo, and a
post-commit git hook works very well committing and
pushing to github.

My git hook:
https://github.com/drbean/dot/blob/master/vcs/svn/post-commit

I should have tried this earlier, because github's
svn-to-git bridge was never perfect. I was not able
to move files within a repo with it.

The explanation at the end of https://svnbook.red-be
an.com/en/1.7/svn.ref.svn.c.checkout.html of
in-place imports of unversioned directory trees
showed me how to 'clone' the git repo as a svn
project (but without history).

### January 20

Actually getting the post-commit hook to do github authentication
wasn't easy.

I had to set user.name and password and credential helper
in the post-commit itself.

https://stackoverflow.com/questions/16040244/subversion-post-commit-hooks
helped with some of the fundamentals of debugging post-commits.

Me at
    <form action='https://mastodon.sdf.org/@drbean'>
    <button type='submit' class='btn'>
    <img src='./mastodon.svg'
        alt='https://joinmastodon.org/logos/wordmark-black-text.svg'
        style='width:100px;height:50px'/>
    </button></form>
    
Back to [ComputerProgramming](ComputerProgramming.html)
