# gmake PREFIX=/tmp install

SUBDIRS = xml book

all: $(SUBDIRS)

install:
	for dir in $(SUBDIRS); do \
	$(MAKE) -C $$dir $@; \
	done

$(SUBDIRS) :
	${MAKE} -C $@

clean:
	for dir in $(SUBDIRS); do \
	$(MAKE) -C $$dir $@; \
	done

#walk subdirs 
.PHONY: subdirs $(SUBDIRS)

#subdirs: GNUmakefile.ink $(SUBDIRS)
