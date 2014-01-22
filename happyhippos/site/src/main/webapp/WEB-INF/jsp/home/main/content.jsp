<%@ include file="/WEB-INF/jspf/htmlTags.jspf" %>
<%--@elvariable id="document" type="com.agile.spirit.beans.HomePageDocument"--%>
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

        <!-- Carousel
        ================================================== -->
        <div id="carousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <c:set var="iterator" value="0" scope="page" />
                <c:forEach var="item" items="${document.banners}">
                    <c:choose>
                        <c:when test="${iterator == '0'}">
                            <li data-target="#carousel" data-slide-to="${iterator}" class="active"></li>
                        </c:when>
                        <c:otherwise>
                            <li data-target="#carousel" data-slide-to="${iterator}"></li>
                        </c:otherwise>
                    </c:choose>
                   <c:set var="iterator" value="${iterator + 1}" scope="page"/>
                </c:forEach>
            </ol>
            <div class="carousel-inner">
                <!-- Dynamic -->
                <c:set var="iterator" value="0" scope="page" />
                <c:forEach var="item" items="${document.banners}">
                    <c:choose>
                        <c:when test="${iterator == '0'}">
                            <c:set var="class" value="item active" scope="page"/>
                        </c:when>
                        <c:otherwise>
                            <c:set var="class" value="item" scope="page"/>
                        </c:otherwise>
                    </c:choose>
                    <div class="${class}">
                        <hst:link var="img" hippobean="${item.image.original}"/>
                        <img src="${img}" alt="${fn:escapeXml(item.image.fileName)}">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>${fn:escapeXml(item.title)}</h1>
                                <p>${fn:escapeXml(item.text)}</p>
                                <hst:link var="link" path="${item.link.path}"/>
                                <p><a class="btn btn-lg btn-primary" href="${link}" role="button">Learn more</a></p>
                            </div>
                        </div>
                    </div>
                    <c:set var="iterator" value="${iterator + 1}" scope="page"/>
                </c:forEach>
            </div>
            <a class="left carousel-control" href="#carousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
            <a class="right carousel-control" href="#carousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div><!-- /.carousel -->


        <!-- Marketing messaging and featurettes
        ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->

        <%--
        <div class="container marketing">

            <h1>${document.title}</h1>

            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" data-src="holder.js/140x140" alt="Generic placeholder image">
                    <h2>Heading</h2>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="img-circle" data-src="holder.js/140x140" alt="Generic placeholder image">
                    <h2>Heading</h2>
                    <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <img class="img-circle" data-src="holder.js/140x140" alt="Generic placeholder image">
                    <h2>Heading</h2>
                    <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
        </div>
        --%>
    </c:otherwise>
</c:choose>