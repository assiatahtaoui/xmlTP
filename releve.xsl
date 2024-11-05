<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title> releve</title>
            </head>
            <body>
                <table border="1" width="80%">
                    <thead>
                        <tr>
                            <th> date</th><th>montant</th><th>type</th><th>description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/releve/operations/operation">
                        <tr>
                            <td><xsl:value-of select="@date"></xsl:value-of></td>
                            <td> <xsl:value-of select="@montant"></xsl:value-of></td>
                            <td> <xsl:value-of select="@type"></xsl:value-of></td>
                            <td> <xsl:value-of select="@description"></xsl:value-of></td>
                        </tr>
                      </xsl:for-each>
                        <tr>
                            <td colspan="2"> total des opérations</td>
                            <td><xsl:value-of select="sum(releve/operations/operation/@montant)"></xsl:value-of> </td>
                        </tr>
                        <tr>
                            <td colspan="2">  le total des opérations de crédit </td>
                            <td> <xsl:value-of select="sum(releve/operations/operation[@type='credit']/@montant)"></xsl:value-of></td>
                        </tr>
                        <tr> 
                            <td colspan="2">  le total des opérations de debit </td>
                            <td> <xsl:value-of select="sum(releve/operations/operation[@type='debit']/@montant)"></xsl:value-of></td>
                        </tr>
                    </tbody>
                </table>
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>