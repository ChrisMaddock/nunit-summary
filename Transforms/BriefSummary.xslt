<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method='text'/>

  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="test-results">
    <xsl:text>***** </xsl:text>
    <xsl:value-of select="@name"/>
    <xsl:text>&#xD;&#xA;</xsl:text>
    <xsl:text>Tests run: </xsl:text>
    <xsl:value-of select="@total"/>
    <xsl:text>, Failures: </xsl:text>
    <xsl:value-of select="@failures"/>
    <xsl:text>, Not run: </xsl:text>
    <xsl:value-of select="@not-run"/>
    <xsl:text>, Time: </xsl:text>
    <xsl:value-of select="test-suite/@time"/>
    <xsl:text> seconds
</xsl:text>
    <xsl:text>
</xsl:text>
  </xsl:template>

</xsl:stylesheet>
