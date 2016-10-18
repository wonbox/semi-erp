
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
	<form action="ProductionComponentUpdateContent.jsp" method="post">
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

			String query1 = "select p.pno, p.pname, p1.pno, pc.p1num, p2.pno, pc.p2num, p3.pno, pc.p3num, p4.pno, pc.p4num from product p, product p1, product p2, product p3, product p4, productcomponent pc where p.pno=pc.pno and p1.pno=pc.p1no and p2.pno=pc.p2no and p3.pno=pc.p3no and p4.pno=pc.p4no;";

			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query1);
		%>
		<div style="text-align: center">
			<img src="/semierp/img/title.jpg" />
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
					<jsp:include page="/WEB-INF/view/inc/Production/Production/ProductionComponent/left.jsp"/>
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
							<%
								while (rs.next()) {
							%>
							<tr>
								<th><a
									href="ProductionComponentUpdateContent.jsp?pno=<%=rs.getString("p.pno")%>"><%=rs.getString("p.pname")%></a></th>
								<th><%=rs.getString("p1.pno")%></th>
								<th><%=rs.getString("pc.p1num")%></th>
								<th><%=rs.getString("p2.pno")%></th>
								<th><%=rs.getString("pc.p2num")%></th>
								<th><%=rs.getString("p3.pno")%></th>
								<th><%=rs.getString("pc.p3num")%></th>
								<th><%=rs.getString("p4.pno")%></th>
								<th><%=rs.getString("pc.p4num")%></th>
							</tr>
							<%
								}
								rs.close();
								st.close();
								conn.close();
							%>

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
