<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Toolbars properties</h2>
        <xsl:for-each select="root/layout/toolbars/toolbar">
          <table style= "margin-left:0px;border-collapse: collapse">
            <tr bgcolor="#fd9213">
              <th style="width:128px; border:1px solid black">Toolbar Name</th>
              <th style="width:128px; border:1px solid black">Toolbar Position</th>
              <th style="width:128px; border:1px solid black">Toolbar Size</th>
            </tr>
            <tr style= "border:1px solid black">
              <td style="border:1px solid black">
                <xsl:value-of select="@name" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="position/x" />
                <br/>
                <xsl:value-of select="position/y" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="size/width" />
                <br/>
                <xsl:value-of select="size/height" />
              </td>
            </tr>
          </table>
          <br/>
          <table style="margin-left:131px; border-collapse: collapse">
            <tr bgcolor="#ffac4b">
              <th style="width:128px; border:1px solid black">Element Name</th>
              <th style="width:128px; border:1px solid black">Element Type</th>
              <th style="width:128px; border:1px solid black">Element Position</th>
              <th style="width:128px; border:1px solid black">Element Size</th>
            </tr>
            <xsl:for-each select="element_layout/element">
              <tr>
                <td style="border:1px solid black">
                  <xsl:value-of select="@name" />
                </td>
                <td style="border:1px solid black">
                  <xsl:value-of select="@type" />
                </td>
                <td style="border:1px solid black">
                  <xsl:value-of select="position/x" />
                  <br />
                  <xsl:value-of select="position/y" />
                </td>
                <td style="border:1px solid black">
                  <xsl:value-of select="size/width" />
                  <br />
                  <xsl:value-of select="size/height" />
                </td>
              </tr>
            </xsl:for-each>
          </table>
          <br />
          <hr style="width:384px; margin-left:0px"></hr>
        </xsl:for-each>
        <h2>Keyboard Mapping</h2>
          <table style= "margin-left:0px;border-collapse: collapse">
            <tr bgcolor="#fd9213">
              <th style="width:128px; border:1px solid black">Mapped Key</th>
              <th style="width:128px; border:1px solid black">Mapped To</th>
            </tr>
            <xsl:for-each select="root/key_mapping/keyboard/key">
            <tr style= "border:1px solid black">
              <td style="border:1px solid black">
                <xsl:value-of select="mapped_key" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="mapped_to" />
              </td>
            </tr>
            </xsl:for-each>
          </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>