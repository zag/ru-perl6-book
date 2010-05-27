#*************************
# VARIABLES
#*************************
FIND= find
SRCDIR ?=../src
DOCDIR=$(SRCDIR)
POD6DOC=perl -I../tools/lib \
	-I/home/zag/Work/proj/p5-Perl6-Pod-Lib/lib \
	  -MPerl6::Pod::Lib::Image \
	 /home/zag/Work/proj/p5-Perl6-Pod/scripts/pod6docbook \
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
	$(POD6DOC) ${ORIG} > $@ 

clean: 
	$(RM)  *.xml
	$(RM) -rf img
