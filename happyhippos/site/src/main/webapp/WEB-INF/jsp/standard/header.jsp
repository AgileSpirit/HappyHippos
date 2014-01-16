<%@ include file="/WEB-INF/jspf/htmlTags.jspf" %>
<%--@elvariable id="headerName" type="java.lang.String"--%>

<!-- Fixed navbar -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${homeLink}">${fn:escapeXml(headerName)}</a>
        </div>
        <div class="navbar-collapse collapse">

            <c:if test="${not empty menu.siteMenuItems}">
                <ul class="nav navbar-nav">
                    <c:forEach var="item" items="${menu.siteMenuItems}">
                        <tag:menuitem siteMenuItem="${item}"/>
                    </c:forEach>
                </ul>
            </c:if>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>
