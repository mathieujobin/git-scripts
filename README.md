# Git Scripts

My Personal Collection of git scripts to easy my day to day work

## Install

```bash
git clone https://github.com/mathieujobin/git-scripts
./install.sh
```

## List of commands

`git amendforcepush`

This is very useful when making small changes and always updating the same branch with the same commit. or when you forgot a little something.
make you change and `git amendforcepush` ! done !

`git fork-checkout forkname:branchname`

Very useful to checkout a PR into your existing repo. Just copy the tag from the open PR.
It will add the named remote and checkout that branch.

`git reflogwithdate`

Adds a date to the reflog output, we're you looking for this?

`git fooit`

meant as a joke...
this is probably the most useless of all. it fetchs a random commit message
commit whatever you have pending

`git newbranch`

this prevents you from having to switch to develop and to your new branch.
does it all in one.

`git pristine`

very useful, I am using this one a lot when I ran into conflicts.
it will revert the change and remove from the index. again, allow to run two operations in one shot with an easy to remember command.

`git reset-author-but-not-date`

when you had your git config wrong, using your work email instead of your personal email. this is so annoying. but amend + reset-author overwrite both the time stamp and the author. this allow to only overwrite the other, keeping the dates on your commits.

`git updatebranch`

does switch to a branch and do a rebase on top of origin/develop

`git xrebase_all_branches --head-branch origin/core [search_pattern]`

there and you encounter some heavy beast function.
it will go through all of your local branch and attempt to rebase them.
if it succeed, you can push by answering 'y'

you can disable all pushes and the question that comes with it by passing `--no-push`
you can also make it stop for rebase that failed if you want to fix those few of those branches. just pass `--stop-to-fix`

by default, it will rebase on top of `origin/develop` you can pass an extra argument to define what should be your top branch.

have fun

`git delete_local_merged_branches`

very simple, clean all your local branches that were merged into HEAD

`git remote_merged_branches`

this command does not actually delete anything. but it outputs the `git push` commands that you would need to run to delete all the branches that was merged.

`git stash_grep`

have you lost something in your stash? this command will help you find it.
it goes through all of your stash and grep for your changes.
simple but very useful.

`git branch_grep`

same idea as stash_grep but with all of your local and remote branches.
- Suggestion of search: `"^+.*Audit\.create"`

## List of commands in alpha state

`git cmdstats`

Parse your local reflog to analyse your own behavior. or if you get access to someone's local repo.
checks what commands he uses the most. does he switch branch often, create branch, use rebase, merge, etc.

`git size`

Just show the size in bytes of the last commit.

# Copyleft MIT

I hope you enjoy it.

comments, question? find me on https://keybase.io/

# Author

Mathieu Jobin
