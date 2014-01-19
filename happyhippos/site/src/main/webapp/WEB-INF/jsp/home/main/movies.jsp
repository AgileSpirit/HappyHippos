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
            <c:forEach var="item" items="${result.hippoBeans}">
                <div class="col-lg-4 text-center">
                    <hst:link var="link" hippobean="${item}"/>
                    <hst:cmseditlink hippobean="${item}"/>
                    <c:if test="${hst:isReadable(item, 'image.original')}">
                        <hst:link var="img" hippobean="${item.image.original}"/>
                            <img src="${img}" title="${fn:escapeXml(item.image.fileName)}"
                                 alt="${fn:escapeXml(item.image.fileName)}"
                                 class="center-block img-circle"/>
                    </c:if>
                    <h2>${fn:escapeXml(item.name)}</h2>
                    <p>${fn:escapeXml(item.summary)}</p>
                    <p><a class="btn btn-primary" href="${link}" role="button">View details &raquo;</a></p>
                </div>
            </c:forEach>
        </div>
    </c:otherwise>
</c:choose>