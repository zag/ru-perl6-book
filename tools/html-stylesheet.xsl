<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>

  <xsl:import href="xsl/xhtml/docbook.xsl"/>
  <xsl:include href="base-html-stylesheet.xsl"/>

  <!-- PARAMETER REFERENCE:                                         -->
  <!-- http://docbook.sourceforge.net/release/xsl/current/doc/html/ -->

  <!-- Uncomment this to enable auto-numbering of sections -->
  <!-- xsl:param name="section.autolabel" select="1" / -->
    <xsl:param name="highlight.source" select="0"/>
    <xsl:param name="highlight.default.language" select="java"></xsl:param>
    <xsl:param name="xslthl.config" >1/highlighters/xslthl-config.xml</xsl:param>

</xsl:stylesheet>
