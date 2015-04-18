My Vim setup for Ruby, Rails, etc.

First, clone the repo and pull the submodules:

```
$ git clone git@github.com:anthonylewis/vimfiles.git ~/.vim
$ cd ~/.vim
$ git submodule init
$ git submodule update
```

Then compile Command-T:

```
$ cd bundle/command-t/ruby/command-t
$ ruby extconf.rb
$ make
```

Finally, link your .vimrc:

```
$ cd
$ ln -s .vim/vimrc .vimrc
```

# Frequently Used Shortcuts

This is basically how I edit everything...

## Buffers

`]+b` Next buffer
`[+b` Previous buffer
`\b`  CommandTBuffer
`\d`  Delete (close) buffer
`\D`  Delete (close) all other buffers
