# How to manage your website content with vimwiki and markdown

You can see the Result here: [https://ljurk.github.io](https://ljurk.github.io)

install vimwiki plugin

    call plug#begin('~/.vim/plugged')
        Plug 'vimwiki/vimwiki'
    call plug#end()

To add .md files to vimwiki filetypes add this to your `~/.vimrc`:

    " filetypes for vimwiki
    let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown',     '.mdown': 'markdown', 'txt' : '.txt'}

install pandoc

    pacman -S pandoc

get makefile and style.css from [github](https://github.com/ljurk/wikipages)

start by editing your **index.md**(idealy in webroot)

    ---
    title: 303
    ---

    # linux

    about

In vimwiki you generate links by pressing enter on a word(for example: **about**) to generate the **about.md** file, if you press enter again you access this file and edit it

    ---
    title: 303
    ---

    Psst

Save your file and then press the backspace to go back to your **index.md**

when compiling pandoc creates two files: **index.html** and **about.html**

    server> ~ / var / www / html > make
    rm -f index.html about.html
    pandoc --smart --standalone style.css -o index.html index.md
    pandoc --smart --standalone style.css -o about.html about.md


There is one problem: pandoc will translate the link in the index to **./about**
You can't access your **about** site, because your file is named **about.html**

That's why some apache magic is needed. Add this to your virtual-host config

    #if foo requested, return foo.html contents
    RewriteCond %{DOCUMENT_ROOT}%{REQUEST_URI} !-d
    RewriteCond %{DOCUMENT_ROOT}%{REQUEST_URI}\.html -f
    RewriteRule ^(.*)$ $1.html [L]

    #redirect foo.html to foo
    RewriteCond %{DOCUMENT_ROOT}%{REQUEST_URI} !-d
    RewriteRule ^(.+)\.html$ $1 [R,L]
