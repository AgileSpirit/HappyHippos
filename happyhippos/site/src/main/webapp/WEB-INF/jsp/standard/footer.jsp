<%@ include file="/WEB-INF/jspf/htmlTags.jspf" %>

<div class="container">
    <hr>
    <!-- Site footer -->
    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>
            &copy; 2014 Agile Spirit &middot;
            <a href="#">Privacy</a> &middot;
            <a href="#">Terms</a> &middot;
            <esi:include src="http://localhost:8080/greeting/">
                You should not see this string. Check that you are on port 8081 with EsiGate server running.
            </esi:include>
        </p>
    </footer>
</div>
