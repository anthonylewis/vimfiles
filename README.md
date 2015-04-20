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

## Opening Files

```
\t  CommandT for finding files
\n  NERDTree for exploring
\a  Open the spec for the current file (vim-rails)
\e  Open the file for the name under the cursor (vim-rails)
```

## Buffers

```
]+b Next buffer
[+b Previous buffer
\b  Search open buffers with CommandT
\d  Delete (close) buffer
\D  Delete (close) all buffers
```

# CommandT

```
\t  Search files
\b  Search bufferes
\f  Refresh known files
```
