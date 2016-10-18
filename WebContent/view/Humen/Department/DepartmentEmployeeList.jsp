<%@page import="java.util.List"%>
<%@page import="org.semierp.vo.employeeInfo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

	String query1 = "SELECT * FROM department WHERE deno=0;";

	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(query1);
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
				<jsp:include page="/WEB-INF/view/inc/Humen/Department/left.jsp"/>
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
							<th>부서 코드</th>
							<th>부서 명</th>
							<th>전화1</th>
							<th>전화2</th>
							<th>관리자</th>
						</tr>
						<%
							if (rs.next()) {
						%>
						<tr>
							<th><%=rs.getString("deno")%></th>
							<th><%=rs.getString("dename")%></th>
							<th><%=rs.getString("detel1")%></th>
							<th><%=rs.getString("detel2")%></th>
							<%
								if ((rs.getString("emno") == null) || (rs.getString("emno").isEmpty()) || (rs.getString("emno").equals(""))) {
							%>
							<th>없음</th>
							<%
								} else {
							%>
							<th><%=rs.getString("emno")%></th>
							<%
								}
								}
							%>
						</tr>

					</table>
					<form action="DepartmentEmployeeListProc.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>" method="post">
						<table class="table table-striped">
							<tr>
								<th>
									<div align="center">
										<select name="selectDeno">
											<%
												query1 = "SELECT deno, dename FROM department;";

												st = conn.createStatement();
												rs = st.executeQuery(query1);
												while (rs.next()) {
											%>
											<option name="deno" value="<%=rs.getString("deno")%>"><%=rs.getString("dename")%></option>
											<%
												}
											%>
										</select>
									</div>
								</th>
								<th>
									<div>
										<input type="submit" value="보기">
									</div>
								</th>
							</tr>

						</table>
					</form>
				</div>
				<div class="row"></div>
				<!--/row-->
			</div>
			<!--/span-->


		</div>
		<!--/row-->

		<hr>

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
