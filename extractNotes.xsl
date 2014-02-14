<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://localhost/tapas"
    version="1.0">
    <xsl:output indent="yes" />
    <xsl:template match="/">
        <notes  xmlns:tei="http://www.tei-c.org/ns/1.0">
            <xsl:apply-templates select="//*[local-name() = 'TEI']//*[local-name() = 'body']//*[local-name() = 'note']"></xsl:apply-templates>
            
        </notes>
        
    </xsl:template>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>