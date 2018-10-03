<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>FNB Simplified Life</h2>
    <h3>Lead Information</h3>
    <table border="0">
      <xsl:for-each select="application-form-definition/application-key-mappings/application-key-map">
        <tr>
         <td>
            <xsl:value-of select="@appname"/>
         </td>
        <td>
          <input type="text"/>
          </td>
        </tr>
      </xsl:for-each>
    </table>
        <h3>Details of plan holder</h3> 
        
        <xsl:value-of select="/application-form-definition/section/field/display-only-text"/>
   
    <table border="0">
 
      <xsl:for-each select="application-form-definition/section/field">
        <tr>
          <td><xsl:value-of select="@dataName"/></td>
          <td><input type="text"/></td>
        </tr>

      </xsl:for-each>
    </table>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 