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
		action="DepartmentUpdateProc.htm?deno=${department.deno}&emno=<%=request.getParameter("emno")%>"
		method="post">
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
								<th>관리자 코드</th>
							</tr>
							<tr>

								<th>${department.deno}</th>
								<th>
									<div class="input-group input-group-sm">
										<input type="text" class="form-control" name="dename"
											placeholder="${department.dename}"
											value="${department.dename}" size="5">
									</div>
								</th>
								<th>
									<div class="input-group input-group-sm">
										<input type="text" class="form-control" name="detel1"
											placeholder="${department.detel1}"
											value="${department.detel1}" size="15">
									</div>

								</th>
								<th>
									<div class="input-group input-group-sm">
										<input type="text" class="form-control" name="detel2"
											placeholder="${department.detel2}"
											value="${department.detel2}" size="15">
									</div>
								<th>
									<div class="input-group input-group-sm">
										<input type="text" class="form-control" name="emno"
											placeholder="${department.emno}"
											value="${department.emno}" size="6">
									</div>
							</tr>
							<tr>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
								<th align="center"><input type="submit" value="수정"></th>
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
