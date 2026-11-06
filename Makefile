SHELL=/bin/bash

SUBDIRS := $(patsubst %/Makefile,%,$(wildcard */Makefile))

.DEFAULT_GOAL := parts

.PHONY: parts midi clean all

parts: $(addprefix parts-,$(SUBDIRS))

midi: $(addprefix midi-,$(SUBDIRS))

clean: $(addprefix clean-,$(SUBDIRS))
	find . -name '*.pdf' -type f -delete
	find . -name '*.mid' -type f -delete
	find . -name '*.midi' -type f -delete

parts-%:
	$(MAKE) -C $* parts

midi-%:
	$(MAKE) -C $* midi

clean-%:
	$(MAKE) -C $* clean

all: parts midi
