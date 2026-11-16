<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8" indent="no"/>

  <!-- Pagination parameters -->
  <xsl:param name="page"     select="1"/>
  <xsl:param name="pageSize" select="10"/>

  <xsl:template match="/festival">
    <xsl:variable name="allPerformers" select="performers/performer"/>
    <xsl:variable name="total"  select="count($allPerformers)"/>
    <xsl:variable name="start"  select="($page - 1) * $pageSize + 1"/>
    <xsl:variable name="end"    select="$page * $pageSize"/>

    <xsl:text>{&#10;</xsl:text>
    <xsl:text>  "total": </xsl:text><xsl:value-of select="$total"/><xsl:text>,&#10;</xsl:text>
    <xsl:text>  "page": </xsl:text><xsl:value-of select="$page"/><xsl:text>,&#10;</xsl:text>
    <xsl:text>  "pageSize": </xsl:text><xsl:value-of select="$pageSize"/><xsl:text>,&#10;</xsl:text>
    <xsl:text>  "performers": [&#10;</xsl:text>
    <xsl:for-each select="$allPerformers">
      <xsl:if test="position() >= $start and position() &lt;= $end">
        <xsl:text>    {&#10;</xsl:text>
        <xsl:text>      "id": "</xsl:text><xsl:value-of select="@id"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>      "name": "</xsl:text><xsl:value-of select="."/><xsl:text>",&#10;</xsl:text>
        <xsl:text>      "specialty": "</xsl:text><xsl:value-of select="@specialty"/><xsl:text>",&#10;</xsl:text>
        <xsl:text>      "link": "/api/performers/</xsl:text><xsl:value-of select="@id"/><xsl:text>"&#10;</xsl:text>
        <xsl:text>    }</xsl:text>
        <xsl:if test="position() != last() and position() &lt; $end"><xsl:text>,</xsl:text></xsl:if>
        <xsl:text>&#10;</xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:text>  ]&#10;</xsl:text>
    <xsl:text>}</xsl:text>
  </xsl:template>

</xsl:stylesheet>
