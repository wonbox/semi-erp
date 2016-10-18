<%@page import="org.semierp.vo.productoutlogInfo"%>
<%@page import="org.semierp.dao.productoutlogDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Semi-ERP</title>
</head>
<body>
	<form action="ProductOutUpdateProc.jsp?pno=<%=request.getParameter("pno")%>" method="post">
		<%
			productoutlogDao pDao = new productoutlogDao();
			productoutlogInfo pInfo = pDao.select(Integer.parseInt(request.getParameter("pno")));
		%>

		<table align="center">
			<tr>
				<th>고객 코드</th>
				<th>고객 명</th>
				<th>연락처</th>
				<th>주소</th>
				<th>CEO 이름</th>
				<th>CEO 연락처</th>
			</tr>
			<tr>
				<th align="center"><%=request.getParameter("pno")%></th>
				<th align="center"><input type="text" name="pname" value="<%=pInfo.getPname()%>"></th>
				<th align="center"><input type="text" name="outsize" value="<%=pInfo.getOutsize()%>"></th>
				<th align="center"><input type="text" name="outdate" value="<%=pInfo.getOutdate()%>"></th>
				<th align="center"><input type="text" name="cno" value="<%=pInfo.getCno()%>"></th>
			</tr>
			<tr>
				<th><input type="button" onclick="location.href='ProductOutUpdate.jsp'" value="뒤로"></th>
				<th></th>
				<th></th>
				<th></th>
				<th align="center"><input type="submit" value="수정"></th>
			</tr>

		</table>

	</form>

</body>
</html>