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

## Ctags

First, install ctags on Mac with `brew install ctags`. Then open your Rails app and generate tags with `:Rtags`.

```
Ctrl+] Jump to the name under the cursor
Ctrl+t Jump back
:tags  Show the tag stack
]+t    Next tag on stack
[+t    Previous tag on stack
```

## Buffers

I use buffers instead of tabs. I usually work on my laptop so I don't even have shortcuts for opening splits. If needed, I just use `:split` or `:vsplit`.

```
]+b Next buffer
[+b Previous buffer
]+B Last Buffer
[+B First Buffer
\b  Search open buffers with CommandT
\d  Delete (close) buffer without closing the window
\D  Delete (close) all buffers
```

## CommandT

```
\t  Search files
\b  Search buffers
\f  Refresh known files
```

## Comments

```
\c  Comment the current line or visual selection
```

## Indent

```
>>  Indent current line
>   Indent visual selection
<<  Outdent current line
<   Outdent visual selection
```

## Tab Completion

Supertab is setup for tab completion of Ruby files. Supertab uses the current buffer and data from ctags for completion.

## Color Line & Column

Does anyone still care about 80-character lines? If so, these are for you...

```
\x  Highlight the current line
\w  Highlight the 80-character column
```

## RSpec

```
\r  Run the current spec file
\s  Run the nearest spec
\l  Run the last spec
```
