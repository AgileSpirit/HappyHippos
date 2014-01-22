<%@ include file="/WEB-INF/jspf/htmlTags.jspf" %>
<%--@elvariable id="document" type="com.agile.spirit.beans.NewsDocument"--%>

<c:choose>
    <c:when test="${empty document}">
        <tag:pagenotfound/>
    </c:when>
    <c:otherwise>
        <c:if test="${not empty document.title}">
            <hst:element var="headTitle" name="title">
                <c:out value="${document.title}"/>
            </hst:element>
            <hst:headContribution keyHint="headTitle" element="${headTitle}"/>
        </c:if>

        <div class="container news-details">
            <div class="col-md-9">
                <article class="news">
                    <hst:cmseditlink hippobean="${document}"/>
                    <header>
                        <h1>${fn:escapeXml(document.title)}</h1>
                        <c:if test="${hst:isReadable(document, 'date.time')}">
                            <p class="metadata">
                                <fmt:formatDate value="${document.date.time}" type="both" dateStyle="medium"
                                                timeStyle="short"/>
                            </p>
                        </c:if>
                    </header>

                    <p class="lead">${fn:escapeXml(document.summary)}</p>

                    <hst:html hippohtml="${document.html}"/>

                    <c:if test="${hst:isReadable(document, 'image.original')}">
                        <hst:link var="img" hippobean="${document.image.original}"/>
                        <figure>
                            <img src="${img}" title="${fn:escapeXml(document.image.fileName)}"
                                 alt="${fn:escapeXml(document.image.fileName)}"/>
                            <figcaption>${fn:escapeXml(document.image.description)}</figcaption>
                        </figure>
                    </c:if>
                </article>
            </div>
            <div class="col-md-3 visible-md visible-lg">
                <a class="twitter-timeline" href="https://twitter.com/DisneyPixar" data-widget-id="425037284996440064">Tweets
                    de @DisneyPixar</a>
                <script>!function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
                    if (!d.getElementById(id)) {
                        js = d.createElement(s);
                        js.id = id;
                        js.src = p + "://platform.twitter.com/widgets.js";
                        fjs.parentNode.insertBefore(js, fjs);
                    }
                }(document, "script", "twitter-wjs");</script>
            </div>

        </div>
    </c:otherwise>
</c:choose>