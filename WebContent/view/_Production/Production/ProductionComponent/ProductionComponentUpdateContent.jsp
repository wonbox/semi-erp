
<%@page import="org.semierp.vo.productcomponentInfo"%>
<%@page import="org.semierp.dao.productcomponentDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<link href="../../../../bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

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
	margin-top: 40px;
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
	<form
		action="ProductionComponentUpdateProc.jsp?pno=<%request.getParameter("pno");%>"
		method="post">
		<%
			productcomponentDao pDao = new productcomponentDao();
			productcomponentInfo pInfo = pDao.select(Integer.parseInt(request.getParameter("pno")));
		%>
		<div style="text-align: center">
			<img src="../../../../img/title.jpg" />
		</div>
		<div class="navbar navbar-top navbar-inverse" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="../../../../mainUI.jsp">㈜개신학용품
						ERP</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="../../../../mainUI.jsp">홈</a></li>
						<li><a href="#">게시판</a></li>
						<li><a href="../../../Humen/Humen.htm">인사 관리</a></li>
						<li><a href="../../../Business/Business.jsp">영업 관리</a></li>
						<li><a href="../../../Purchase/Purchase.jsp">자재 관리</a></li>
						<li><a href="../../../Production/Production.jsp">생산 관리</a></li>
					</ul>
				</div>
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
					<div class="well sidebar-nav">
						<ul class="nav">
							<li><a href="ProductionComponent.jsp"><h3>생산품 구성 관리</h3></a></li>
							<li><a href="ProductionComponentInsert.jsp">부품 설정</a></li>
							<li><a href="ProductionComponentUpdate.jsp">부품 정보 변경</a></li>
							<li><a href="ProductionComponentDelete.jsp">삭제</a></li>
						</ul>
					</div>
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
								<th>제품 이름</th>
								<th>부품1 코드</th>
								<th>부품1 수량</th>
								<th>부품2 코드</th>
								<th>부품2 수량</th>
								<th>부품3 코드</th>
								<th>부품3 수량</th>
								<th>부품4 코드</th>
								<th>부품4 수량</th>
							</tr>

							<tr>
								<th><%=request.getParameter("pno")%></th>
								<th><input type="text" name="p1no"
									value="<%=pInfo.getP1no()%>" size="3"></th>
								<th><input type="text" name="p1num"
									value="<%=pInfo.getP1num()%>" size="3"></th>
								<th><input type="text" name="p2no"
									value="<%=pInfo.getP2no()%>" size="3"></th>
								<th><input type="text" name="p2num"
									value="<%=pInfo.getP2num()%>" size="3"></th>
								<th><input type="text" name="p3no"
									value="<%=pInfo.getP3no()%>" size="3"></th>
								<th><input type="text" name="p3num"
									value="<%=pInfo.getP3num()%>" size="3"></th>
								<th><input type="text" name="p4no"
									value="<%=pInfo.getP4no()%>" size="3"></th>
								<th><input type="text" name="p4num"
									value="<%=pInfo.getP4num()%>" size="3"></th>
							</tr>
							<tr>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
								<th align="center"><input type="submit" value="수정"></th>
								<th></th>
							</tr>

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
	</form>
</body>
</html>
