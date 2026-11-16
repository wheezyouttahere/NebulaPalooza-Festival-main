<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8" indent="no"/>

  <!-- Parameter: venueId e.g. "V1" -->
  <xsl:param name="venueId" select="'V1'"/>

  <xsl:template match="/festival">
    <xsl:variable name="v" select="venues/venue[@id = $venueId]"/>
    <xsl:choose>
      <xsl:when test="$v">
        <xsl:text>{&#10;</xsl:text>
        <xsl:text>  "id": "</xsl:text><xsl:value-of select="$v/@id"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>  "name": "</xsl:text><xsl:value-of select="$v/@name"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>  "type": "</xsl:text><xsl:value-of select="$v/@type"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>  "events": [&#10;</xsl:text>
        <xsl:for-each select="programme/event[@venue = $venueId]">
          <xsl:text>    { "id": "</xsl:text><xsl:value-of select="@id"/>
          <xsl:text>", "title": "</xsl:text><xsl:value-of select="."/>
          <xsl:text>", "day": "</xsl:text><xsl:value-of select="@day"/>
          <xsl:text>" }</xsl:text>
          <xsl:if test="position() != last()"><xsl:text>,</xsl:text></xsl:if>
          <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
        <xsl:text>  ]&#10;</xsl:text>
        <xsl:text>}</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>{ "error": "Venue not found", "code": 404 }</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
