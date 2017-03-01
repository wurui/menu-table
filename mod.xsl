<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">

    <xsl:template match="/root" name="wurui.menu-table">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-menu-table" ox-mod="menu-table">
            <ul class="mod2-{count(data/table-menu/i) mod 2}">
                <xsl:for-each select="data/table-menu/i">
                    <li>
                        <a href="{normalize-space(href)}">
                            <h3>
                                <xsl:value-of select="title" disable-output-escaping="yes"/>
                            </h3>
                            <span class="tag" data-color="{color}" style="border-color:{color};color:{color};">
                                <xsl:value-of select="tag"/>
                            </span>
                            <img class="icon" src="{normalize-space(icon)}"/>
                        </a>
                    </li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>

</xsl:stylesheet>
