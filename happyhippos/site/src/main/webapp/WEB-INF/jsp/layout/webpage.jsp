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
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Twitter Bootstrap -->
    <hst:link var="bootstrapCss" path="/css/bootstrap.css"/>
    <link rel="stylesheet" href="${bootstrapCss}" type="text/css"/>

    <hst:link var="carouselCss" path="/css/carousel.css"/>
    <link rel="stylesheet" href="${carouselCss}" type="text/css"/>

    <hst:link var="styleCss" path="/css/style.css"/>
    <link rel="stylesheet" href="${styleCss}" type="text/css"/>
</head>
<body>
<hst:include ref="header"/>
<hst:include ref="main"/>
<hst:include ref="footer"/>

<hst:headContributions categoryIncludes="scripts" xhtml="true"/>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<hst:link var="bootstrapJs" path="/js/bootstrap.min.js"/>
<script src="${bootstrapJs}"></script>
<hst:link var="holderJs" path="/js/holder.js"/>
<script src="${holderJs}"></script>

</body>
</html>