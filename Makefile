SHELL=/bin/bash

# The command to run lilypond
LILY_CMD := lilypond -ddelete-intermediate-files \
                    -dno-point-and-click

# The suffixes used in this Makefile.
.SUFFIXES: .ly .ily .pdf .midi

.DEFAULT_GOAL := parts

PDFDIR := PDFs
MIDIDIR := MIDIs
LYDIR := src

# Input and output files are searched in the directories listed in
# the VPATH variable.  All of them are subdirectories of the current
# directory (given by the GNU make variable `CURDIR`).
VPATH := \
  $(CURDIR)/$(LYDIR) \
  $(CURDIR)/$(PDFDIR) \
  $(CURDIR)/$(MIDIDIR)

# The pattern rule to create PDF and MIDI files from a LY input file.
# The .pdf output files are put into the `PDF` subdirectory, and the
# .midi files go into the `MIDI` subdirectory.
%.pdf %.midi: %.ly | $(PDFDIR) $(MIDIDIR)
	$(LILY_CMD) $<          	# this line begins with a tab
	mv "$*.pdf" $(PDFDIR)/		# this line begins with a tab
	if test -f "$*.midi" ; then mv "$*.midi" $(MIDIDIR)/ ; fi	# this line begins with a tab

$(PDFDIR):
	mkdir $(PDFDIR)

$(MIDIDIR):
	mkdir $(MIDIDIR)

SOURCES := $(shell find $(CURDIR) -name '*.ly' -exec basename '{}' .ly \;)
# OBJS := $(SRCS:%=$(BUILD_DIR)/%.o)

.PHONY: parts
parts:  $(foreach SOURCE,$(SOURCES),$(SOURCE).pdf)

.PHONY: midi
midi: $(foreach SOURCE,$(SOURCES),$(SOURCE).midi)

.PHONY: all
all: parts midi

clean:
	rm -rf $(CURDIR)/$(MIDIDIR) $(CURDIR)/$(PDFDIR)
