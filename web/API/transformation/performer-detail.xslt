<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8" indent="no"/>

  <!-- Parameter: performerId e.g. "P1" -->
  <xsl:param name="performerId" select="'P1'"/>

  <xsl:template match="/festival">
    <xsl:variable name="p" select="performers/performer[@id = $performerId]"/>
    <xsl:choose>
      <xsl:when test="$p">
        <xsl:text>{&#10;</xsl:text>
        <xsl:text>  "id": "</xsl:text><xsl:value-of select="$p/@id"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>  "name": "</xsl:text><xsl:value-of select="$p"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>  "specialty": "</xsl:text><xsl:value-of select="$p/@specialty"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>  "events": [&#10;</xsl:text>
        <xsl:for-each select="programme/event[@performer = $performerId]">
          <xsl:text>    { "id": "</xsl:text><xsl:value-of select="@id"/>
          <xsl:text>", "title": "</xsl:text><xsl:value-of select="."/>
          <xsl:text>", "day": "</xsl:text><xsl:value-of select="@day"/>
          <xsl:text>", "venueId": "</xsl:text><xsl:value-of select="@venue"/>
          <xsl:text>" }</xsl:text>
          <xsl:if test="position() != last()"><xsl:text>,</xsl:text></xsl:if>
          <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>  ]&#10;</xsl:text>
        <xsl:text>}</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>{ "error": "Performer not found", "code": 404 }</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
