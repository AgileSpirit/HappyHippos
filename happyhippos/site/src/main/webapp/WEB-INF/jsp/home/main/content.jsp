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
            <h1>Marketing stuff!</h1>

            <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus
                commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet.</p>

            <p><a class="btn btn-lg btn-success" href="#" role="button">Get started today</a></p>
        </div>

        <!-- Example row of columns -->
        <div class="row">
            <div class="col-lg-4">
                <h2>Safari bug warning!</h2>

                <p class="text-danger">Safari exhibits a bug in which resizing your browser horizontally causes
                    rendering errors in the justified nav that are cleared upon refreshing.</p>

                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor
                    mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna
                    mollis euismod. Donec sed odio dui. </p>

                <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor
                    mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna
                    mollis euismod. Donec sed odio dui. </p>

                <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula
                    porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
                    ut fermentum massa.</p>

                <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
            </div>
        </div>

    </c:otherwise>
</c:choose>