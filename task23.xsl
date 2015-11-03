<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="utf-8" method="html" />

<xsl:template match="/">
	<xsl:for-each select="//book">
		<xsl:choose>
			<xsl:when test="./price/text() &lt; 30">
				<xsl:value-of select="./title/text()"/> &lt; 30
			</xsl:when>
			<xsl:when test="./price/text() &gt; 30">
				<xsl:value-of select="./title/text()"/> &gt; 30
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="./title/text()"/> &equals; 30
			</xsl:otherwise>
		</xsl:choose>
		<xsl:if test="position() != last()">, </xsl:if>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>
