# Makefile
# original: https://gist.github.com/kristopherjohnson/7466917
# <http://johnmacfarlane.net/pandoc/>
#
# Run "make" (or "make all") to convert to all other formats
#
# Run "make clean" to delete converted files

# Convert all files in this directory that have a .md suffix

# files
INDEX_DOC = index.md
EXPORTED_INDEX = index.html

SOURCE_DOCS := $(wildcard *.md)
SOURCE_DOCS := $(filter-out $(INDEX_DOC), $(SOURCE_DOCS))
EXPORTED_DOCS = $(SOURCE_DOCS:.md=.html)

# commands and arguments
RM = rm -f

PANDOC = pandoc

PANDOC_OPTIONS = --standalone #--toc

PANDOC_HTML_OPTIONS = --to html5 -c style.css

PANDOC_TOC = --toc

# Pattern-matching Rules
%.html : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_HTML_OPTIONS) -o $@ $<
	mv $@ docs/

# compile it with Table of Contents
index.html : index.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_HTML_OPTIONS) $(PANDOC_TOC) -o $@ $<
	mv $@ docs/

# Targets and dependencies
.DEFAULT_GOAL := all
.PHONY: all clean compile

all : clean compile

compile : $(EXPORTED_DOCS) $(EXPORTED_INDEX)

io : compile
	find docs/ -type f -name '*.html' -print0 | xargs -0 sed -i 's#303.ddns.net#ljurk.github.io/wikipages#g'


clean:
	- $(RM) $(EXPORTED_DOCS) $(EXPORTED_INDEX)
