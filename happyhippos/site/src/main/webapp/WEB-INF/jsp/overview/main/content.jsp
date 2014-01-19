<%@ include file="/WEB-INF/jspf/htmlTags.jspf" %>
<%--@elvariable id="crPage" type="java.lang.Integer"--%>
<%--@elvariable id="info" type="${package}.componentsinfo.GeneralListInfo"--%>
<%--@elvariable id="page" type="java.util.Collection<java.lang.Integer>"--%>
<%--@elvariable id="pages" type="java.util.Collection<java.lang.Integer>"--%>
<%--@elvariable id="result" type="org.hippoecm.hst.content.beans.query.HstQueryResult"--%>

[jsp/overview/main/content.jsp]
<c:choose>
    <c:when test="${empty info}">
        <tag:pagenotfound/>
    </c:when>
    <c:otherwise>
        <c:if test="${not empty document.title}">
            <hst:element var="headTitle" name="title">
                <c:out value="${document.title}"/>
            </hst:element>
            <hst:headContribution keyHint="headTitle" element="${headTitle}"/>
        </c:if>

        <div class="container news-overview">
            <div class="col-md-9">
                <c:forEach var="item" items="${result.hippoBeans}">
                    <hst:link var="link" hippobean="${item}"/>
                    <article class="news">
                        <hst:cmseditlink hippobean="${item}"/>
                        <h2><a href="${link}">${fn:escapeXml(item.title)}</a></h2>
                        <c:if test="${hst:isReadable(item, 'date.time')}">
                            <p class="metadata">
                                <fmt:formatDate value="${item.date.time}" type="both" dateStyle="medium" timeStyle="short"/>
                            </p>
                        </c:if>
                        <p class="content">
                                ${fn:escapeXml(item.summary)}
                        <span class="read-more">
                            <a href="${link}" role="button">Read more...</a>
                        </span>
                        </p>
                    </article>
                </c:forEach>
            </div>
            <div class="col-md-3 visible-md visible-lg">
                <a class="twitter-timeline" href="https://twitter.com/DisneyPixar" data-widget-id="425037284996440064">Tweets de @DisneyPixar</a>
                <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
            </div>

            <!--if there are pages on the request, they will be printed by the tag:pages -->
            <tag:pages pages="${pages}" page="${page}"/>

        </div>
    </c:otherwise>
</c:choose>