#*************************
# VARIABLES
#*************************
include ../tools/Makefile.base-vars

NAME = book
OUTNAME = ru-perl6-book
DIR = book
#FO_XSL= fo.book-stylesheet.xsl
#include  ../tools/Makefile.base

all:
	${MAKE} install INSTALL_SUBDIR=../latest_build

include ../tools/Makefile.base-rules



IMAGES = img


#IMAGES = img
#$(FO_TARGET):
#	java -Xmx256M -classpath "1/xslthl-2.0.1.jar:/usr/local/share/java/classes/saxon.jar" \
#	-Dxslthl.config="file:///home/zag/Work/proj/WebDAO.site/tmp/1/highlighters/xslthl-config.xml" \
#	com.icl.saxon.StyleSheet -o $(FO_TARGET) $(XML_SOURCE) fo.book-stylesheet.xsl