<?xml version='1.0' encoding='iso-8859-1'?>

<!-- XHTML-to-Markdown converter by Andrew Green, Article Seven, http://www.article7.co.uk/ -->
<!-- This work is licensed under the Creative Commons Attribution-ShareAlike License. To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/2.0/ or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA. -->

<xsl:stylesheet version='1.0' xmlns:h="http://www.w3.org/1999/xhtml" xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>

    <xsl:output method='text' encoding='utf-8'/>

    <xsl:strip-space elements="*" />

    <xsl:variable name="newline" >
        <xsl:text>&#013;</xsl:text>
            </xsl:variable>

    <xsl:variable name="tab">
        <xsl:text>	</xsl:text>
    </xsl:variable>
    <xsl:template match="/">
        <xsl:text>#Apache Directory config schema</xsl:text>
        <xsl:value-of select="$newline"/>
        <xsl:value-of select="$newline"/>
        <xsl:text>## Object Classes</xsl:text>

        <xsl:value-of select="$newline" />
        <xsl:value-of select="$newline" />

        <xsl:for-each select="/schema/objectclasses/objectclass">
            <xsl:sort select="aliases/alias"/>
            <xsl:apply-templates select="."/>
        </xsl:for-each>
        <xsl:call-template name="attributetype-tablebegin"/>
        <xsl:for-each select="/schema/attributetypes/attributetype">
            <xsl:sort select="aliases/alias"/>
            <xsl:apply-templates select="."/>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="objectclass-tablebegin">


        <xsl:text>description</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>type</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>oid</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>superior</xsl:text>

        <xsl:value-of select="$newline" />

        <xsl:text>-----------</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>----</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>---</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>--------</xsl:text>

        <xsl:value-of select="$newline" />

    </xsl:template>

    <xsl:template match="//objectclass">
        <xsl:value-of select="$newline"/>
        <xsl:text>### class </xsl:text>
        <xsl:value-of select="aliases/alias"/>
        <xsl:value-of select="$tab"/>
        <xsl:text>{#</xsl:text>
        <xsl:value-of select="aliases/alias"/>
        <xsl:text>}</xsl:text>
        <xsl:value-of select="$newline"/>
        <xsl:call-template name="objectclass-tablebegin"/>




        <xsl:if test="description">
        <xsl:value-of select="description"/>
        </xsl:if>
        <xsl:text> | </xsl:text>
        <xsl:value-of select="type"/>
        <xsl:text> | </xsl:text>
        <xsl:value-of select="@oid"/>
        <xsl:text> | </xsl:text>
        <xsl:choose>
            <xsl:when test="superiors/superior[text()=/schema/objectclasses/objectclass/aliases/alias/text()]">
                <xsl:value-of select="concat('[',superiors/superior,'](#',superiors/superior,')')"></xsl:value-of>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="superiors/superior"></xsl:value-of>
            </xsl:otherwise>
        </xsl:choose>

        <xsl:value-of select="$newline"/>
        <xsl:value-of select="$newline"/>
        <xsl:text>#### attributes</xsl:text>
        <xsl:value-of select="$newline"/>
        <xsl:if test="mandatory">
            <xsl:text>| mandatory |</xsl:text>
            <xsl:value-of select="$newline"/>
            <xsl:text>| -------- |</xsl:text>
            <xsl:value-of select="$newline"/>
            <xsl:for-each select="mandatory/attributetype">
                <xsl:choose>
                <xsl:when test="/schema/attributetypes/attributetype/aliases/alias/text()=text()">
                    <xsl:value-of select="concat('| [',.,'](#',.,') |')"></xsl:value-of>
                </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="concat('| ',.,' |')"></xsl:value-of>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:value-of select="$newline"/>
            </xsl:for-each>
            <xsl:value-of select="$newline"/>
        </xsl:if>
        <xsl:if test="optional">
            <xsl:text>| optional |</xsl:text>
            <xsl:value-of select="$newline"/>
            <xsl:text>| -------- |</xsl:text>
            <xsl:value-of select="$newline"/>
            <xsl:for-each select="optional/attributetype">
                <xsl:choose>
                    <xsl:when test="/schema/attributetypes/attributetype/aliases/alias/text()=text()">
                        <xsl:value-of select="concat('| [',.,'](#',.,') |')"></xsl:value-of>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="concat('| ',.,' |')"></xsl:value-of>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:value-of select="$newline"/>
            </xsl:for-each>
            <xsl:value-of select="$newline"/>
        </xsl:if>

    </xsl:template>
    <xsl:template name="attributetype-tablebegin">
        <xsl:text>## Attribute types</xsl:text>

        <xsl:value-of select="$newline" />
        <xsl:value-of select="$newline" />
        <xsl:text>alias</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text> description</xsl:text>

        <xsl:text> | </xsl:text>
        <xsl:text>syntax</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>equality</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>ordering</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>substring</xsl:text>
        <xsl:value-of select="$newline" />
        <xsl:text>----------</xsl:text>

        <xsl:text> | </xsl:text>
        <xsl:text>-----</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>-----</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>------</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>------</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>--------</xsl:text>
        <xsl:text> | </xsl:text>
        <xsl:text>--------</xsl:text>
        <xsl:value-of select="$newline" />

    </xsl:template>
    <xsl:template match="//attributetype">

        <xsl:value-of select="aliases/alias"/>
        <xsl:value-of select="$tab"/>
        <xsl:text>{#</xsl:text>
        <xsl:value-of select="aliases/alias"/>
        <xsl:text>}</xsl:text>
       <xsl:text> | </xsl:text>
        <xsl:value-of select="description"/>

       <xsl:text> | </xsl:text>
        <xsl:value-of select="syntax"/>
       <xsl:text> | </xsl:text>
        <xsl:value-of select="equality"/>
       <xsl:text> | </xsl:text>
        <xsl:value-of select="ordering"/>
       <xsl:text> | </xsl:text>
        <xsl:value-of select="substring"/>
        <xsl:value-of select="$newline"/>

    </xsl:template>

    <xsl:template match="text()">

    </xsl:template>
 </xsl:stylesheet>