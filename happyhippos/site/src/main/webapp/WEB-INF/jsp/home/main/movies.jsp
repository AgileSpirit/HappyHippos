<%@ include file="/WEB-INF/jspf/htmlTags.jspf" %>
<%--@elvariable id="info" type="${package}.componentsinfo.ListInfo"--%>
<%--@elvariable id="result" type="org.hippoecm.hst.content.beans.query.HstQueryResult"--%>

<c:choose>
    <c:when test="${empty info}">
        <tag:pagenotfound/>
    </c:when>
    <c:otherwise>
        <hr>
        <div class="row ${fn:escapeXml(info.cssClass)}">
            <h2>${fn:escapeXml(info.title)}</h2>
            <c:forEach var="item" items="${result.hippoBeans}">
                <div class="col-lg-4">
                    <hst:link var="link" hippobean="${item}"/>
                    <hst:cmseditlink hippobean="${item}"/>
                    <c:if test="${hst:isReadable(item, 'poster.original')}">
                        <hst:link var="img" hippobean="${item.poster.original}"/>
                            <img src="${img}" title="${fn:escapeXml(item.poster.fileName)}"
                                 alt="${fn:escapeXml(item.poster.fileName)}"
                                 class="center-block"/>
                    </c:if>
                    <h2>${fn:escapeXml(item.title)}</h2>
                    <p>${fn:escapeXml(item.summary)}</p>
                    <p><a class="btn btn-primary" href="${link}" role="button">View details &raquo;</a></p>
                </div>
            </c:forEach>
        </div>
    </c:otherwise>
</c:choose>