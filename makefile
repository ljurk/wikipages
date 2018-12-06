# Makefile
# original: https://gist.github.com/kristopherjohnson/7466917 
# <http://johnmacfarlane.net/pandoc/>
#
# Run "make" (or "make all") to convert to all other formats
#
# Run "make clean" to delete converted files

# Convert all files in this directory that have a .md suffix
SOURCE_DOCS := $(wildcard *.md)

EXPORTED_DOCS=$(SOURCE_DOCS:.md=.html)

RM=rm -f

PANDOC=pandoc

PANDOC_OPTIONS=--smart --standalone #--toc

PANDOC_HTML_OPTIONS=--to html5 -c style.css

# Pattern-matching Rules

%.html : %.md
	$(PANDOC) $(PANDOC_OPTIONS) $(PANDOC_HTML_OPTIONS) -o $@ $<

# Targets and dependencies

.PHONY: all clean compile

all : clean compile

compile : $(EXPORTED_DOCS)

clean:
	- $(RM) $(EXPORTED_DOCS)
