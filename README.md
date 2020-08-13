This is a template repository for new swift packages.

# Creating a new project based on this template

Invoke the `clone` script (`zsh` required):

```bash
git clone git@github.com:swiftuilib/new-component
cd new-component
./bin/clone My-View
```

Work on your project:

```bash
xed my-view
```

# Git configuration

Optionally configure git with recommended settings by creating a `conf/git/user` file (git-ignored):

```
# conf/git/user
[user]
  signingkey = ABCDEF0123456789
  name = ghuser
  email = 123456789+ghuser@users.noreply.github.com
```

And include the recommended settings in the local repo config:

```bash
git init
git config include.path ../conf/git/shared
```

You can encrypt your `user` file as `ghuser.gpg`

```bash
 gpg --output conf/git/users/ghuser.gpg --encrypt --recipient ghuser conf/git/user
```

# Commit and push changes

Finally add everything to git:

```bash
git checkout -b develop
git add -A
git commit -m "Initial commit"
git remote add origin git@github.com:swiftuilib/my-view
git push -u origin master
```
