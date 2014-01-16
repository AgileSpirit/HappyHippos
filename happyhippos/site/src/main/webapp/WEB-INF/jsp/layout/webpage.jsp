<!doctype html>
<%@ include file="/WEB-INF/jspf/htmlTags.jspf" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>

    <hst:headContributions categoryExcludes="scripts" xhtml="true"/>
    <!--[if lt IE 9]>
    <hst:link var="html4shiv" path="/js/html5shiv.js"/>
    <script type="text/javascript" src="${html4shiv}"></script>
    <![endif]-->
    <hst:link var="styleCss" path="/css/style.css"/>
    <link rel="stylesheet" href="${styleCss}" type="text/css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Twitter Bootstrap -->
    <hst:link var="bootstrapCss" path="/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${bootstrapCss}" type="text/css"/>
    <hst:link var="bootstrapThemeCss" path="/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="${bootstrapThemeCss}" type="text/css"/>

</head>
<body>
<hst:include ref="header"/>
<hst:include ref="main"/>
<hst:include ref="footer"/>

<hst:headContributions categoryIncludes="scripts" xhtml="true"/>

<hst:link var="bootstrapJs" path="/js/bootstrap.min.css"/>
<script src="${bootstrapJs}"></script>

</body>
</html>