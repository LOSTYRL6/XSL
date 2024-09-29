<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="monuments-list">
    <html>
      <head>
        <title>Monuments</title>
        <link rel="stylesheet" href="monuments.css"/>
      </head>
      <body>
        <header>
          <h1><xsl:value-of select="continent"/></h1>
        </header>
        <nav class="main_menu">
            <a class="main_option" href="africa.xml">Àfrica</a>
            <a class="main_option" href="america.xml">Amèrica</a>
            <a class="main_option" href="asia.xml">Àsia</a>
            <a class="main_option" href="europa.xml">Europa</a>
            <a class="main_option" href="oceania.xml">Oceania</a>
        </nav>
        <nav class="country_menu">
            <xsl:for-each select="countries/country">
                <a class="country_option" href="#{name}">
                  <xsl:value-of select="name"/>
                </a>
            </xsl:for-each>
        </nav>
        <main>
          <xsl:for-each select="countries/country">
            <div id="{name}" class="country_section">
              <a class="TituloPais" href="#top"><h2><xsl:value-of select="name"/></h2></a>
              <section class="country_monuments">
                <xsl:for-each select="monuments/monument">
                    <div>
                      <a class="item" target="_blank" href="https://ca.wikipedia.org/wiki/{url}">
                        <h3><xsl:value-of select="name"/></h3>
                        <img src="{image}.jpeg" alt="{name}"/>
                        <h4>Location: <xsl:value-of select="place"/></h4>
                      </a>
                    </div>
                </xsl:for-each>
              </section>
            </div>
          </xsl:for-each>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
