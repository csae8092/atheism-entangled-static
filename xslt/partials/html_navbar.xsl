<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all" version="2.0">
    <xsl:template name="nav_bar">
        <a class="visually-hidden-focusable" href="#main">Jump to content</a>
        <header>
            <nav aria-label="Primary" class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.html">
                        <xsl:value-of select="$project_short_title"/>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Projekt</a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a class="dropdown-item" href="about.html">About the project</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="imprint.html">Imprint</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="toc.html">Texts</a>
                            </li>
                            <li class="nav-item dropdown disabled">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Register</a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a class="dropdown-item" href="listkeyword.html">Keywords</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="listperson.html">Persons</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="listplace.html">Places</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown disabled">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Analysis</a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a class="dropdown-item" href="calendar.html">Calendar</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="network.html">Network</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a title="API" class="nav-link" href="api.xml">API</a>
                            </li>
                        </ul>
                        <div class="d-none d-lg-block">
                            <form class="d-flex" role="search" action="search.html" method="get">
                                <label for="search-input" class="visually-hidden">Search</label>
                                <input
                                    class="form-control me-2"
                                    type="text"
                                    id="nav-search-input"
                                    name="atheism-entangled-static[query]"
                                    placeholder="Search"
                                    aria-label="Search"
                                />
                                <button class="btn btn-primary" type="submit">Search</button>
                            </form>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
    </xsl:template>
</xsl:stylesheet>