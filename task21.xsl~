<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="utf-8" method="html" />

<xsl:template match="/">
	<xsl:for-each select="//book">
		<xsl:value-of select="./title"/>
		<xsl:if select="./count(author) &gt; 1"/>*</xsl:if>
		<xsl:if test="position() != last()">, </xsl:if>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>
