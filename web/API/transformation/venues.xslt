<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8" indent="no"/>

  <xsl:template match="/festival">
    <xsl:text>[&#10;</xsl:text>
    <xsl:for-each select="venues/venue">
      <xsl:text>  {&#10;</xsl:text>
      <xsl:text>    "id": "</xsl:text><xsl:value-of select="@id"/><xsl:text>",&#10;</xsl:text>
      <xsl:text>    "name": "</xsl:text><xsl:value-of select="@name"/><xsl:text>",&#10;</xsl:text>
      <xsl:text>    "type": "</xsl:text><xsl:value-of select="@type"/><xsl:text>",&#10;</xsl:text>
      <xsl:text>    "link": "/api/venues/</xsl:text><xsl:value-of select="@id"/><xsl:text>"&#10;</xsl:text>
      <xsl:text>  }</xsl:text>
      <xsl:if test="position() != last()"><xsl:text>,</xsl:text></xsl:if>
      <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
    <xsl:text>]</xsl:text>
  </xsl:template>

</xsl:stylesheet>
