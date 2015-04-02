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

Finally, create your tmp directory and link your .vimrc:

```
$ cd
$ mkdir .vim/tmp
$ ln -s .vim/vimrc .vimrc
```
