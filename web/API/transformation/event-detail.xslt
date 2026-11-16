<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8" indent="no"/>

  <!-- Parameter: eventId e.g. "E1" -->
  <xsl:param name="eventId" select="'E1'"/>

  <xsl:template match="/festival">
    <xsl:variable name="e" select="programme/event[@id = $eventId]"/>
    <xsl:choose>
      <xsl:when test="$e">
        <xsl:variable name="vid" select="$e/@venue"/>
        <xsl:variable name="pid" select="$e/@performer"/>
        <xsl:text>{&#10;</xsl:text>
        <xsl:text>  "id": "</xsl:text><xsl:value-of select="$e/@id"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>  "title": "</xsl:text><xsl:value-of select="$e"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>  "day": "</xsl:text><xsl:value-of select="$e/@day"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>  "venue": {&#10;</xsl:text>
        <xsl:text>    "id": "</xsl:text><xsl:value-of select="$vid"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>    "name": "</xsl:text><xsl:value-of select="venues/venue[@id=$vid]/@name"/><xsl:text>"&#10;</xsl:text>
        <xsl:text>  },&#10;</xsl:text>
        <xsl:text>  "performer": {&#10;</xsl:text>
        <xsl:text>    "id": "</xsl:text><xsl:value-of select="$pid"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>    "name": "</xsl:text><xsl:value-of select="performers/performer[@id=$pid]"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>    "specialty": "</xsl:text><xsl:value-of select="performers/performer[@id=$pid]/@specialty"/><xsl:text>"&#10;</xsl:text>
        <xsl:text>  }&#10;</xsl:text>
        <xsl:text>}</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>{ "error": "Event not found", "code": 404 }</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
