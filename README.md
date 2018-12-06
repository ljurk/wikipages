---
title: <a href="https://303.ddns.net"><img src="smile.png" alt="drawing" width="100"/></a>
---


# README
to use vimwiki and its links i have to get the requeste URL without .html

    #if foo requested, return foo.html contents
    RewriteCond %{DOCUMENT_ROOT}%{REQUEST_URI} !-d
    RewriteCond %{DOCUMENT_ROOT}%{REQUEST_URI}\.html -f
    RewriteRule ^(.*)$ $1.html [L]

    #redirect foo.html to foo
    RewriteCond %{DOCUMENT_ROOT}%{REQUEST_URI} !-d
    RewriteRule ^(.+)\.html$ $1 [R,L]
