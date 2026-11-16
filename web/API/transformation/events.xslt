<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8" indent="no"/>

  <!-- Filter parameters -->
  <xsl:param name="day"         select="''"/>
  <xsl:param name="venueId"     select="''"/>
  <xsl:param name="performerId" select="''"/>
  <!-- Pagination -->
  <xsl:param name="page"     select="1"/>
  <xsl:param name="pageSize" select="20"/>

  <xsl:template match="/festival">
    <xsl:text>{&#10;</xsl:text>
    <xsl:text>  "page": </xsl:text><xsl:value-of select="$page"/><xsl:text>,&#10;</xsl:text>
    <xsl:text>  "pageSize": </xsl:text><xsl:value-of select="$pageSize"/><xsl:text>,&#10;</xsl:text>
    <xsl:text>  "filters": {&#10;</xsl:text>
    <xsl:text>    "day": "</xsl:text><xsl:value-of select="$day"/><xsl:text>",&#10;</xsl:text>
    <xsl:text>    "venueId": "</xsl:text><xsl:value-of select="$venueId"/><xsl:text>",&#10;</xsl:text>
    <xsl:text>    "performerId": "</xsl:text><xsl:value-of select="$performerId"/><xsl:text>"&#10;</xsl:text>
    <xsl:text>  },&#10;</xsl:text>
    <xsl:text>  "events": [&#10;</xsl:text>
    <xsl:for-each select="programme/event">
      <!-- Apply filters (empty param = no filter) -->
      <xsl:if test="($day = '' or @day = $day)
                and ($venueId = '' or @venue = $venueId)
                and ($performerId = '' or @performer = $performerId)">
        <xsl:text>    {&#10;</xsl:text>
        <xsl:text>      "id": "</xsl:text><xsl:value-of select="@id"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>      "title": "</xsl:text><xsl:value-of select="."/><xsl:text>",&#10;</xsl:text>
        <xsl:text>      "day": "</xsl:text><xsl:value-of select="@day"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>      "venueId": "</xsl:text><xsl:value-of select="@venue"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>      "performerId": "</xsl:text><xsl:value-of select="@performer"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>      "link": "/api/events/</xsl:text><xsl:value-of select="@id"/><xsl:text>"&#10;</xsl:text>
        <xsl:text>    }</xsl:text>
        <xsl:if test="position() != last()"><xsl:text>,</xsl:text></xsl:if>
        <xsl:text>&#10;</xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:text>  ]&#10;</xsl:text>
    <xsl:text>}</xsl:text>
  </xsl:template>

</xsl:stylesheet>
