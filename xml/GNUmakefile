#*************************
# VARIABLES
#*************************
FIND= find
SRCDIR ?=../src
DOCDIR=$(SRCDIR)
POD6DOC=pod6docbook \
	 -use_block Perl6::Pod::Lib::Image=Image

# ****************************************************************
# * some things we can figure out here, so we shouldn't 
# * have to mess with the settings all the time
# ****************************************************************

# the sourcefiles
#!!!!!

PODFILES = $(shell ${FIND} ${DOCDIR} -name *.pod 2>/dev/null)
SRCFILES = $(PODFILES)

XML_TARGETS = $(addsuffix .xml, $(basename $(notdir $(SRCFILES))))

$(XML_TARGETS): BASE = $(basename $(notdir $@))
$(XML_TARGETS): ORIG = $(filter %/${BASE}.pod,${SRCFILES})

.PHONY: clean

all: $(XML_TARGETS)

$(XML_TARGETS):
	@echo TARGET BASE: ${BASE} ${ORIG}
	$(POD6DOC)  ${ORIG} > $@ 

book_preface.xml:
	@echo TARGET BASE: ${BASE} ${ORIG}
	$(POD6DOC) -doctype preface ${ORIG} > $@ 

clean: 
	$(RM)  *.xml
	$(RM) -rf img
