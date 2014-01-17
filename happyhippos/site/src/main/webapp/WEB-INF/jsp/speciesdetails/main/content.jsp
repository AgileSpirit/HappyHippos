<!-- Detail of one Species -->
<%@ include file="/WEB-INF/jspf/htmlTags.jspf" %>
<%--@elvariable id="document" type="com.agile.spirit.beans.SpeciesDocument"--%>

<c:choose>
    <c:when test="${empty document}">
        <tag:pagenotfound/>
    </c:when>
    <c:otherwise>
        <c:if test="${not empty document.name}">
            <hst:element var="headTitle" name="title">
                <c:out value="${document.name}"/>
            </hst:element>
            <hst:headContribution keyHint="headTitle" element="${headTitle}"/>
        </c:if>

        <article>
            <hst:cmseditlink hippobean="${document}"/>
            <header>
                <h1>${fn:escapeXml(document.name)}</h1>
            </header>
            <hst:html hippohtml="${document.description}"/>
            <c:if test="${hst:isReadable(document, 'image.original')}">
                <hst:link var="img" hippobean="${document.image.original}"/>
                <figure>
                    <img src="${img}" title="${fn:escapeXml(document.image.fileName)}"
                         alt="${fn:escapeXml(document.image.fileName)}"/>
                    <figcaption>${fn:escapeXml(document.image.description)}</figcaption>
                </figure>
            </c:if>
        </article>

    </c:otherwise>
</c:choose>