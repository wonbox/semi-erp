
<%@page import="org.semierp.vo.supplierInfo"%>
<%@page import="org.semierp.dao.supplierDao"%>
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
	<form
		action="SupplierUpdateProc.jsp?sno=<%=request.getParameter("sno")%>&deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"
		method="post">
		<%
			supplierDao sDao = new supplierDao();
			supplierInfo sInfo = sDao.select(Integer.parseInt(request.getParameter("sno")));
		%>
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
					
					<jsp:include page="/WEB-INF/view/inc/purchaseQuality/Supplier/left.jsp"/>
					
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
								<th>거래처 코드</th>
								<th>거래처 이름</th>
								<th>연락처</th>
								<th>주소</th>
								<th>CEO 이름</th>
								<th>CEO 연락처</th>
							</tr>

							<tr>
								<th><%=request.getParameter("sno")%></th>
								<th><input type="text" name="sname"
									value="<%=sInfo.getSname()%>" size="8"></th>
								<th><input type="text" name="stel"
									value="<%=sInfo.getStel()%>" size="8"></th>
								<th><input type="text" name="saddress"
									value="<%=sInfo.getSaddress()%>" size="10"></th>
								<th><input type="text" name="ceoname"
									value="<%=sInfo.getCeoname()%>" size="10"></th>
								<th><input type="text" name="ceotel"
									value="<%=sInfo.getCeotel()%>" size="10"></th>
							</tr>
							<tr>
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
