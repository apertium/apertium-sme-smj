<?xml version="1.0" encoding="UTF-8"?> <!-- -*- nxml -*- -->
<!--
Copyright (C) 2016 Universitat d'Alacant / Universidad de Alicante

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License as
published by the Free Software Foundation; either version 2 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, see <http://www.gnu.org/licenses/>.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="UTF-8"/>

  <xsl:template name="replaceString">
    <xsl:param name="haystack"/>
    <xsl:param name="needle"/>
    <xsl:param name="replacement"/>
    <xsl:choose>
      <xsl:when test="contains($haystack, $needle)">
        <xsl:value-of select="substring-before($haystack, $needle)"/>
        <xsl:value-of select="$replacement"/>
        <xsl:call-template name="replaceString">
          <xsl:with-param name="haystack"
                          select="substring-after($haystack, $needle)"/>
          <xsl:with-param name="needle" select="$needle"/>
          <xsl:with-param name="replacement" select="$replacement"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$haystack"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="seq">
      <xsl:copy-of select="/metalrx/def-seqs/def-seq[@n = current()/@n]/*"/>
  </xsl:template>

  <xsl:template match="metalrx">
    <xsl:apply-templates select="./rules"/>
  </xsl:template>


  <xsl:template match="program">
    <mode install="no">
      <xsl:attribute name="name">
        <xsl:value-of select="../../@name"/>
        <xsl:call-template name="debugSuffix">
          <xsl:with-param name="progname" select="./@name"/>
        </xsl:call-template>
      </xsl:attribute>
      <pipeline>
        <xsl:copy-of select="./preceding-sibling::*"/>
        <program>
          <xsl:attribute name="name">
            <xsl:call-template name="replaceString">
              <xsl:with-param name="haystack" select="./@name"/>
              <xsl:with-param name="needle" select="'$1'"/>
              <xsl:with-param name="replacement" select="'-d'"/>
            </xsl:call-template>
            <xsl:call-template name="traceOpt">
              <xsl:with-param name="progname" select="./@name"/>
            </xsl:call-template>
          </xsl:attribute>
          <xsl:copy-of select="./*"/>
        </program>
      </pipeline>
    </mode>
  </xsl:template>

  <!-- catch-all -->
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
