
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<link href="../../../bootstrap/css/bootstrap.min.css" rel="stylesheet">

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
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://ddong_J.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM product ORDER BY pno asc;";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
	%>
	<form action="StockDeleteProc.jsp" method="post">
		<div style="text-align: center">
			<img src="../../../img/title.jpg" />
		</div>
		<div class="navbar navbar-top navbar-inverse" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="../../../mainUI.jsp">㈜개신학용품 ERP</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="../../../mainUI.jsp">홈</a></li>
						<li><a href="#">게시판</a></li>
						<li><a href="../../Humen/Humen.htm">인사 관리</a></li>
						<li><a href="../../Business/Business.jsp">영업 관리</a></li>
						<li><a href="../../Purchase/Purchase.jsp">자재 관리</a></li>
						<li><a href="../../Production/Production.jsp">생산 관리</a></li>
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
							<li><a href="Stock.jsp"><h3>창고 관리</h3></a></li>
							<li><a href="StockInsert.jsp">재고 추가</a></li>
							<li><a href="StockUpdate.jsp">재고 변경</a></li>
							<li><a href="StockDelete.jsp">재고 삭제</a></li>
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
								<th align="center"></th>
								<th align="center">재고코드</th>
								<th align="center">재고 명</th>
								<th align="center">수량</th>
								<th align="center">구분</th>
								<th align="center">가격</th>
							</tr>
							<%
								while (rs.next()) {
									if (rs.getString("pno").equals("0")) {
										continue;
									}
							%>
							<tr>
								<th><input type="checkbox" name="pno"
									id="<%=rs.getString("pno")%>" value="<%=rs.getString("pno")%>" /><label
									for="<%=rs.getString("pno")%>"></label></th>
								<th align="center"><%=rs.getString("pno")%></th>
								<th align="center"><%=rs.getString("pname")%></th>
								<th align="center"><%=rs.getString("pnum")%></th>
								<%
									if (rs.getString("pdiv").equals("H")) {
								%>
								<th align="center">생산품</th>
								<%
									} else {
								%>
								<th align="center">부품</th>
								<%
									}
								%>
								<th align="center"><%=rs.getString("price")%>원</th>
							</tr>
							<%
								}
								rs.close();
								st.close();
								conn.close();
							%>
							<tr>
								<th></th>
								<th><input type="submit" name="delete" value="삭제"></th>
								<th></th>
								<th></th>
								<th></th>
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
