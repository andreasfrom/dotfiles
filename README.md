Dotfiles
========

Introduction
------------

These are the dotfiles I use on Linux for the following programs:

* [Vim](http://www.vim.org)
* [Zsh](http://www.zsh.org) with [Oh-my-Zsh](http://www.github.com/robbyrussell/oh-my-zsh)
* [Emacs](http://www.gnu.org/emacs)
* [Pentadactyl](http://dactyl.sourceforge.net/pentadactyl)

Files
-----

### Vim

I use SuperTab, SnipMate, Fugitive, Syntastic, EasyMotion, CtrlP, Powerline, NERD{Tree,Commenter} and Badwolf as colorscheme.
and other great plugins. They are all organized in my bundle folder
(hurray for Tim Pope's [Pathogen](http://www.github.com/tpope/vim-pathogen)!) as git submodules. This means that to get a fully updated version all that's necessary is the following steps:
```
    git clone https://github.com/AndreasFrom/dotfiles
    cd dotfiles
    git submodule init
    git submodule update
    (./symlink.rb)
```
and you're done :)

### Zsh

Zsh is great and you should try it out, especially the autocorrect and globbing
features are awesome. With Oh-my-Zsh you also get excellent plugins and themes.
I've made my own theme called From-minimal.

### Emacs

Emacs is a great editor and I tend to switch between Vim and Emacs. At the
moment I'm using Vim though.

### Pentadactyl

This is a Firefox extension which makes controlling Firefox with the keyboard
easier. It uses Vim style modal commands and is very nice.
The rc file consists of some bindings and appearence changes as well
as "set defsearch=duckduckgo" which makes DuckDuckGo the default search engine.

Management
----------

For managing the whole thing I use a simple Ruby-script which symlinks files
from my dotfiles dir to my home folder. The original script is from
[errtheblog](http://errtheblog.com/posts/89-huba-huba) but I've changed it slightly to move existing files to
$file.old instead of just skipping them.

Thanks
------
I want to thank Alexis Sellier ([cloudhead](http://www.cloudhead.com)) and [Steve Losh](http://www.stevelosh.com) for inspiration and snippets for my Vim setup aswell as my Zsh setup.
Steve Losh for making it possible to 'steal' his .pentadactylrc.

[Steve Yegge](http://steve-yegge.blogspot.com) and [MasteringEmacs.org](http://masteringemacs.org) has helped me greatly with my Emacs setup.
