<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:tcn="urn:taidh:cun/"
  exclude-result-prefixes="xs"
  version="1.0">

  <xsl:strip-space elements="*"/>
  <xsl:output encoding="UTF-8" method="html"/>

  <xsl:template match="/">
    <div>
      <xsl:apply-templates/>
    </div>
  </xsl:template>

  <xsl:template match="tcn:text">
    <xsl:apply-templates/>
  </xsl:template>

  <!--
  <xsl:template match="dasg:include">
    <xsl:variable name="file" select="@href"/>
    <xsl:variable name="ref" select="document($file)/dasg:text/@ref"/>
    <p>
      <a href="viewText.php?ref={$ref}">
        <xsl:value-of select="$ref"/>
      </a>
    </p>
  </xsl:template>
-->

  <xsl:template match="tcn:h">
    <h3>
        <xsl:apply-templates/>
    </h3>
  </xsl:template>

  

  <xsl:template match="tcn:p">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  
<!--
  <xsl:template match="dasg:o[name(following-sibling::*[1])='w' or name(following-sibling::*[1])='s']">
    <span class="text-muted">
      <xsl:apply-templates/>
    </span>
    <xsl:text> </xsl:text>
  </xsl:template>

  <xsl:template match="dasg:o">
    <span class="text-muted">
      <xsl:apply-templates/>
    </span>
  </xsl:template>

  <xsl:template match="dasg:w[name(following-sibling::*[1])='w' or name(following-sibling::*[1])='o' or name(following-sibling::*[1])='i' or name(following-sibling::*[1])='footnote']">
    <xsl:variable name="forms">
      <xsl:for-each select="dasg:form">
        <xsl:value-of select="."/>
        <xsl:if test="position() != last()">
          <xsl:text>|</xsl:text>
        </xsl:if>
      </xsl:for-each>
    </xsl:variable>
    <span class="word" data-toggle="tooltip" data-placement="top">
      <xsl:attribute name="data-pos">
        <xsl:value-of select="@pos"/>
      </xsl:attribute>
      <xsl:attribute name="data-lemma">
        <xsl:value-of select="@lemma"/>
      </xsl:attribute>
      <xsl:attribute name="id">
        <xsl:value-of select="@id"/>
      </xsl:attribute>
      <xsl:attribute name="title">
        <xsl:if test="@lemma">
          <xsl:text>lemma: </xsl:text>
          <xsl:value-of select="@lemma"/>
        </xsl:if>
        <xsl:if test="@pos">
          <xsl:text> pos: </xsl:text>
          <xsl:value-of select="@pos"/>
        </xsl:if>
      </xsl:attribute>
      <xsl:attribute name="data-ref">
        <xsl:value-of select="@ref"/>
      </xsl:attribute>
      <xsl:attribute name="data-forms">
        <xsl:value-of select="$forms"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </span>
    <xsl:text> </xsl:text>
  </xsl:template>

  <xsl:template match="dasg:w">
    <xsl:variable name="forms">
      <xsl:for-each select="dasg:form">
        <xsl:value-of select="."/>
        <xsl:if test="position() != last()">
          <xsl:text>|</xsl:text>
        </xsl:if>
      </xsl:for-each>
    </xsl:variable>
    <span class="word" data-toggle="tooltip" data-placement="top">
      <xsl:attribute name="data-pos">
        <xsl:value-of select="@pos"/>
      </xsl:attribute>
      <xsl:attribute name="data-lemma">
        <xsl:value-of select="@lemma"/>
      </xsl:attribute>
      <xsl:attribute name="id">
        <xsl:value-of select="@id"/>
      </xsl:attribute>
      <xsl:attribute name="title">
        <xsl:if test="@lemma">
          <xsl:text>lemma: </xsl:text>
          <xsl:value-of select="@lemma"/>
        </xsl:if>
        <xsl:if test="@pos">
          <xsl:text> pos: </xsl:text>
          <xsl:value-of select="@pos"/>
        </xsl:if>
      </xsl:attribute>
      <xsl:attribute name="data-forms">
        <xsl:value-of select="$forms"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </span>
  </xsl:template>

  <xsl:template match="dasg:form">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="dasg:pc[@join='right']">
    <xsl:text> </xsl:text>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="dasg:pc[@join='left']">
    <xsl:apply-templates/>
    <xsl:text> </xsl:text>
  </xsl:template>

  <xsl:template match="dasg:pc[@join='no']">
    <xsl:text> </xsl:text>
    <xsl:apply-templates/>
    <xsl:text> </xsl:text>
  </xsl:template>

  <xsl:template match="dasg:pc">
    <xsl:apply-templates/>
  </xsl:template>

  

  <xsl:template match="dasg:pb">
    <xsl:if test="not(name(following-sibling::*[1])='pb')">
      <hr/>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="@img and starts-with(@img,'http')">
        <a class="link externalLink" data-url="{@img}">[<xsl:value-of select="@n"/>]</a>
        <xsl:text>&#32;</xsl:text>
      </xsl:when>
      <xsl:when test="@img">
        <a class="link scanLink" data-pdf="{@img}">[<xsl:value-of select="@n"/>]</a>
        <xsl:text>&#32;</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <span class="text-muted">[<xsl:value-of select="@n"/>] </span>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  
  

  <xsl:template match="dasg:x">
    <xsl:if test="not(name(preceding::*[1])='pc' and preceding::*[1]/@join='right')">
      <xsl:text> </xsl:text>
    </xsl:if>
    <u style="text-decoration-color: red; text-decoration-style: dashed">
      <xsl:apply-templates/>
    </u>
    <xsl:if test="not(name(following::*[1])='pc' and following::*[1]/@join='left')">
      <xsl:text> </xsl:text>
    </xsl:if>
  </xsl:template>


  <xsl:template match="dasg:lb">
    <br/>
  </xsl:template>

  <xsl:template match="dasg:s">
    <xsl:text> </xsl:text>
    <xsl:apply-templates/>
    <xsl:text> </xsl:text>
  </xsl:template>
-->

</xsl:stylesheet>
