<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">

  <xsl:output method="text"/>
  <xsl:strip-space elements="*"/>

  <xsl:template match="/">
    <xsl:message>
      <xsl:text>Hello!</xsl:text>
      <xsl:text>&#10;==================</xsl:text>
    </xsl:message>

    <xsl:for-each select="a">
      <xsl:message>
        <xsl:text>a </xsl:text>
        <xsl:value-of select="@name"/>
      </xsl:message>
    </xsl:for-each>
    <xsl:message>
      <xsl:text>==================</xsl:text>
    </xsl:message>

    <xsl:for-each select="a/b">
      <xsl:message>
        <xsl:text>a/b </xsl:text>
        <xsl:value-of select="@name"/>
      </xsl:message>
    </xsl:for-each>
    <xsl:message>
      <xsl:text>==================</xsl:text>
    </xsl:message>

    <xsl:for-each select="a/b/c">
      <xsl:message>
        <xsl:text>a/b/c </xsl:text>
        <xsl:value-of select="@name"/>
      </xsl:message>
    </xsl:for-each>
    <xsl:message>
      <xsl:text>==================</xsl:text>
    </xsl:message>

    <xsl:for-each select="a//b">
      <xsl:message>
        <xsl:text>a//b </xsl:text>
        <xsl:value-of select="@name"/>
      </xsl:message>
    </xsl:for-each>
    <xsl:message>
      <xsl:text>==================</xsl:text>
    </xsl:message>

    <xsl:for-each select="a/b/*">
      <xsl:message>
        <xsl:text>a/b/* </xsl:text>
        <xsl:value-of select="@name"/>
      </xsl:message>
    </xsl:for-each>
    <xsl:message>
      <xsl:text>==================</xsl:text>
    </xsl:message>

    <xsl:for-each select="a//b/*">
      <xsl:message>
        <xsl:text>a//b/* </xsl:text>
        <xsl:value-of select="@name"/>
      </xsl:message>
    </xsl:for-each>
    <xsl:message>
      <xsl:text>==================</xsl:text>
    </xsl:message>

    <xsl:for-each select="a//b/*[1]">
      <xsl:message>
        <xsl:text>a//b/*[1] </xsl:text>
        <xsl:value-of select="@name"/>
      </xsl:message>
    </xsl:for-each>
    <xsl:message>
      <xsl:text>==================</xsl:text>
    </xsl:message>

    <xsl:for-each select="(a//b/*)">
      <xsl:message>
        <xsl:text>(a//b/*) </xsl:text>
        <xsl:value-of select="@name"/>
      </xsl:message>
    </xsl:for-each>
    <xsl:message>
      <xsl:text>==================</xsl:text>
    </xsl:message>

    <xsl:for-each select="(a//b/*)[1]">
      <xsl:message>
        <xsl:text>(a//b/*)[1] </xsl:text>
        <xsl:value-of select="@name"/>
      </xsl:message>
    </xsl:for-each>
    <xsl:message>
      <xsl:text>==================</xsl:text>
    </xsl:message>

    <xsl:for-each select="//b/*">
      <xsl:message>
        <xsl:text>//b/* </xsl:text>
        <xsl:value-of select="@name"/>
      </xsl:message>
    </xsl:for-each>
    <xsl:message>
      <xsl:text>==================</xsl:text>
    </xsl:message>

  </xsl:template>

</xsl:stylesheet>
