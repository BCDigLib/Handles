<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/root">
        <xsl:for-each select="record">
                    <xsl:text>CREATE </xsl:text>
            <xsl:value-of select="normalize-space(handle)"/>
            <xsl:text>
</xsl:text>         
                    <xsl:text>100 HS_ADMIN 86400 1110 ADMIN 300:111111111111:</xsl:text><xsl:value-of select="normalize-space(handle)"/>
            <xsl:text>
</xsl:text>    
<xsl:text>300 HS_SECKEY 86400 1100 UTF8 XXXXXXXX</xsl:text>
            <xsl:text>
</xsl:text>            
            <!-- RD Record -->            
<xsl:value-of select="concat('201 URL 86400 1110 UTF8 http://dcollections.bc.edu/R/-?func=dbin-jump-full&amp;object_id=', pid, '&amp;local_base=GEN01-',owner)"/>
            <!-- Object View -->
            <!--xsl:value-of select="concat('201 URL 86400 1110 UTF8 http://dcollections.bc.edu/webclient/DeliveryManager?pid=', pid, '&amp;custom_att_2=simple_viewer&amp;local_base=GEN01-',owner)"/-->            
<xsl:text>
</xsl:text>  
            <xsl:text>
</xsl:text>             
            </xsl:for-each>
      </xsl:template>
    <xsl:template match="text()"/>
</xsl:stylesheet>

