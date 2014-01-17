<%@ include file="/WEB-INF/jspf/htmlTags.jspf" %>
<%--@elvariable id="document" type="com.agile.spirit.beans.TextDocument"--%>
<%--@elvariable id="headTitle" type="java.lang.String"--%>

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

        <!-- Jumbotron -->
        <div class="jumbotron">
            <h1>${document.title}</h1>

            <p class="lead">
                <hst:html hippohtml="${document.html}"/>
            </p>

            <p><a class="btn btn-lg btn-success" href="http://www.iucnredlist.org/about/red-list-overview" role="button">Discover more</a></p>
        </div>
        <hr>

    </c:otherwise>
</c:choose>