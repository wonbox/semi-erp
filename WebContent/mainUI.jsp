<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.png">

    <title>㈜개신학용품 ERP</title>

    <!-- Bootstrap core CSS -->
    <link href="./bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="justified-nav.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../../assets/js/html5shiv.js"></script>
    <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div class="container">

    <div class="masthead">
        <h2 class="text-muted">㈜개신학용품 ERP</h2>
        <ul class="nav nav-justified">
            <li class="active"><a href="mainUI.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">홈</a></li>
            <li><a href="/semierp/view/notice/notice.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">게시판</a></li>
            <%if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("1") ){ %>
        	    <li><a href="/semierp/view/Humen/Humen.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">인사 관리</a></li>
            <%} 
            if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("2") ){
            %>
            <li><a href="/semierp/view/sales/sales.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">영업 관리</a></li>
            <%}
            if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("3") ){
            %>
            <li><a href="/semierp/view/Purchase/Purchase.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">자재 관리</a></li>
            <%}
            if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("4") ){
            %>
            <li><a href="/semierp/view/PurchaseQuality/PurchaseQuality.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">자재 품질 관리</a></li>
            <%}
            if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("5") ){
            %>
            <li><a href="/semierp/view/Production/Production.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">생산 관리</a></li>
            <%} %>
        </ul>
    </div>

    <!-- Jumbotron -->
    <div class="jumbotron">
    <img src="/semierp/img/gaesinMain.jpg" />
        <!-- <h1>㈜개신학용품 ERP 에 오신것을 환영합니다</h1> -->
        <p class="lead"></p>
        <p class="lead"></p>
        <p class="lead"></p>
    </div>

    <!-- Example row of columns -->
	    <!-- 
	    <div class="row">
	        <div class="col-lg-4">
	            <h2></h2>
	            <p></p>
	            <p><a class="btn btn-primary" href="#">알림글1 &raquo;</a></p>
	        </div>
	        <div class="col-lg-4">
	            <h2></h2>
	            <p></p>
	            <p><a class="btn btn-primary" href="#">알림글2 &raquo;</a></p>
	        </div>
	        <div class="col-lg-4">
	            <h2></h2>
	            <p></p>
	            <p><a class="btn btn-primary" href="#">알림글3 &raquo;</a></p>
	        </div>
	    </div>
		 -->
    <!-- Site footer -->
   <jsp:include page="/WEB-INF/view/inc/footer.jsp"/>
</div> <!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>
