
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

	String query1 = "SELECT * FROM orderlist o WHERE ono = '"+request.getParameter("ono")+"';";

	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(query1);
	rs.next();
	
	String ono = rs.getString("ono");
	String otitle = rs.getString("otitle");
	String ocontent = rs.getString("ocontent");
	String orderdate = rs.getString("orderdate");
	
	
	rs.close();
	st.close();
	conn.close();

%>

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
	<div style="text-align: center">
		<img src="../../../img/title.jpg" />
	</div>
	<div class="navbar navbar-top navbar-inverse" role="navigation">
		<div class="container">
			<jsp:include page="/WEB-INF/view/inc/top.jsp"/>
		</div>
		<!-- /.container -->
	</div>
	<!-- /.navbar -->

	<div class="container">
		<div id="blank_top"></div>
		<div class="row row-offcanvas row-offcanvas-right">
			<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar"
				role="navigation">
				
				<jsp:include page="/WEB-INF/view/inc/purchaseQuality/OrderPurchase/left.jsp"/>
				
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
							<th>번호</th>
							<th>제목</th>
							<th>날짜</th>
						</tr>
						
						<tr>
							<th><%=ono%></th>
							<th><%=otitle %></th>
							<th><%=orderdate%></th>
						</tr>
						
					</table>
					<table class="table table-striped">
						<tr>
							<th>발주 내용</th>
						</tr>
						<tr>
							<th><%=ocontent %></th>
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
</body>
</html>
