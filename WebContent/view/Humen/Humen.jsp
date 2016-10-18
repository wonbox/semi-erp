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
<link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="offcanvas.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="../../assets/js/html5shiv.js"></script>
    <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->

<style>
.footer {
	border-top: 1px solid #eee;
	margin-top: 10px;
	padding-top: 40px;
	padding-bottom: 40px;
}

#blank_top {
	border-top: 1px solid #eee;
	margin-top: 20px;
	padding-top: 20px;
	padding-bottom: 20px;
}
</style>

</head>

<body>
	<div style="text-align: center">
		<img src="/semierp/img/title.jpg" />
	</div>
	<div class="navbar navbar-top navbar-inverse" role="navigation">
		<div class="container">
		
			<jsp:include page="/WEB-INF/view/inc/top.jsp"/>
			
			<!-- /.nav-collapse -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.navbar -->

	<div class="container">
		<div id="blank_top"></div>
		<div class="row row-offcanvas row-offcanvas-right">
			<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar"
				role="navigation">
				<jsp:include page="/WEB-INF/view/inc/Humen/left.jsp"/>
				<!--/.well -->
			</div>
			<!--/span-->
			<div class="col-xs-12 col-sm-9">
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">Toggle nav</button>
				</p>
				<div class="jumbotron">
					<table class="table table-striped">
						<tr>
							<th>구분</th>
							<th>직원 코드</th>
							<th>부서 명</th>
							<th>이름</th>
							<th>주소</th>
							<th>연락처</th>
							<th>직위</th>
							<th>입사 일</th>
						</tr>
						<c:forEach var="n" items="${humens}">
							<tr>
								<th>${n.emdiv}</th>
								<th>${n.emno}</th>
								<th>${n.dename}</th>
								<th>${n.emname}</th>
								<th>${n.emaddress}</th>
								<th>${n.emtel}</th>
								<th>${n.emposition}</th>
								<th>${n.emjoindate}</th>
							</tr>
						</c:forEach>

					</table>
				</div>
				<div class="row"></div>
				<!--/row-->
			</div>
			<!--/span-->


		</div>
		<!--/row-->


		<jsp:include page="/WEB-INF/view/inc/footer.jsp"/>

	</div>
	<!--/.container-->



	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="../../assets/js/jquery.js"></script>
	<script src="../../dist/js/bootstrap.min.js"></script>
	<script src="offcanvas.js"></script>
</body>
</html>
