<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="2.0" exclude-result-prefixes="xsl tei xs">

    <xsl:import href="./partials/html_head.xsl"/>
    <xsl:import href="./partials/html_navbar.xsl"/>
    <xsl:import href="./partials/html_footer.xsl"/>
    <xsl:import href="./partials/one_time_alert.xsl"/>
    <xsl:import href="./partials/blockquote.xsl"/>
    <xsl:import href="./partials/zotero.xsl"/>

    <xsl:output encoding="UTF-8" media-type="text/html" method="html" version="5.0" indent="yes" omit-xml-declaration="yes"/>
    <xsl:param name="production" as="xs:string" select="'false'"/>


    <xsl:template match="/">
        <xsl:variable name="doc_title">
            <xsl:value-of select='"DEMO Entangled Atheism"'/>
        </xsl:variable>
        <html class="h-100" lang="{$default_lang}">
            <head>
                <xsl:call-template name="html_head">
                    <xsl:with-param name="html_title" select="$doc_title"></xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="zoterMetaTags"></xsl:call-template>
            </head>            
            <body class="d-flex flex-column h-100">
                <xsl:call-template name="nav_bar"/>
                <main class="flex-shrink-0 flex-grow-1">
                    <div class="container col-xxl-8 pt-3">
                        
                        <xsl:call-template name="one_time_alert"/>
                        <div class="row flex-lg-row align-items-center g-5 py-5">
                            <div class="col-lg-6">
                                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                    <strong>Attention:</strong> This is just a demo page set up for a workshop. All content is AI generated.
                                </div>
                              <h1 class="lh-base"><span class="all-caps display-4">European <br/>Entangled Atheism <br/>1860s–1940s</span></h1>
                              
                              <div class="d-grid gap-2 d-md-flex justify-content-md-start">
                                  <a href="about.html" type="button" class="btn btn-outline-primary btn-lg px-4 me-md-2">About the Project</a>
                                  <a href="toc.html" type="button" class="btn btn-outline-primary btn-lg px-4">Browse Texts</a>
                              </div>
                           </div>
                            <div class="col-10 col-sm-8 col-lg-6">
                                <figure class="figure">
                                    <img src="images/title-image.jpg"
                                        class="d-block mx-lg-auto img-fluid"
                                        alt=" Lajos Tihanyi, Porträt Karl Kraus 1925" width="400" height="600"
                                        loading="lazy"/>
                                    <figcaption class="pt-3 figure-caption">Image taken from <a href="https://www.uni-goettingen.de/de/scientific+network+meeting+in+bamberg+from+14th+to+15th+september+2026%3a+european+entangled+atheisms+%281860s+-+1940s%29/710297.html">https://www.uni-goettingen.de</a></figcaption>
                                </figure>
                            </div>
                        </div>
                        <div class="text-center p-4">
                            <xsl:call-template name="blockquote"/>
                        </div>
                    </div>
                </main>
                <xsl:call-template name="html_footer"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
