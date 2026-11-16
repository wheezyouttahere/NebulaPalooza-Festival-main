<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8" indent="no"/>

  <xsl:template match="/festival">
    <xsl:text>{&#10;</xsl:text>
    <xsl:text>  "id": "nebula-palooza-2026",&#10;</xsl:text>
    <xsl:text>  "name": "</xsl:text><xsl:value-of select="@name"/><xsl:text>",&#10;</xsl:text>
    <xsl:text>  "year": </xsl:text><xsl:value-of select="@year"/><xsl:text>,&#10;</xsl:text>
    <xsl:text>  "location": "</xsl:text><xsl:value-of select="identity/location"/><xsl:text>",&#10;</xsl:text>
    <xsl:text>  "dates": "</xsl:text><xsl:value-of select="identity/dates"/><xsl:text>",&#10;</xsl:text>
    <xsl:text>  "description": "A Sci-Art fusion festival blending high-energy music with educational space exploration.",&#10;</xsl:text>
    <xsl:text>  "tickets": {&#10;</xsl:text>
    <xsl:text>    "dayPass": { "name": "Day Pass", "price": 25, "currency": "EUR" },&#10;</xsl:text>
    <xsl:text>    "fullAccess": { "name": "Full Cosmic Access", "price": 60, "currency": "EUR" }&#10;</xsl:text>
    <xsl:text>  },&#10;</xsl:text>
    <xsl:text>  "links": {&#10;</xsl:text>
    <xsl:text>    "venues": "/api/venues",&#10;</xsl:text>
    <xsl:text>    "performers": "/api/performers",&#10;</xsl:text>
    <xsl:text>    "events": "/api/events"&#10;</xsl:text>
    <xsl:text>  }&#10;</xsl:text>
    <xsl:text>}</xsl:text>
  </xsl:template>

</xsl:stylesheet>
