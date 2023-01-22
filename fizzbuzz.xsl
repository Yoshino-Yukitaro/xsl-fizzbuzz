<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="num">
        <answers>
            <xsl:apply-templates select="value"/>
        </answers>
    </xsl:template>
    <xsl:template match="value">
        <ans>
            <xsl:choose>
                <xsl:when test=". mod 15 = 0">FizzBuzz</xsl:when>
                <xsl:when test=". mod 3 = 0">Fizz</xsl:when>
                <xsl:when test=". mod 5 = 0">Buzz</xsl:when>
                <xsl:otherwise><xsl:value-of select="." /></xsl:otherwise>
            </xsl:choose>
        </ans>
    </xsl:template>
</xsl:stylesheet>
