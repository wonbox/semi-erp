<%@page import="org.semierp.dao.customerDao"%>
<%@page import="org.semierp.vo.customerInfo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Semi-ERP</title>
</head>
<body>
	<form action="CustomerUpdateProc.jsp?cno=<%=request.getParameter("cno")%>" method="post">
		<%
			customerDao cDao = new customerDao();
			customerInfo cInfo = cDao.select(Integer.parseInt(request.getParameter("cno")));
		%>

		<table align="center">
			<tr>
				<th>�� �ڵ�</th>
				<th>�� ��</th>
				<th>����ó</th>
				<th>�ּ�</th>
				<th>CEO �̸�</th>
				<th>CEO ����ó</th>
			</tr>
			<tr>
				<th align="center"><%=request.getParameter("cno")%></th>
				<th align="center"><input type="text" name="cname" value="<%=cInfo.getCname()%>"></th>
				<th align="center"><input type="text" name="ctel" value="<%=cInfo.getCtel()%>"></th>
				<th align="center"><input type="text" name="caddress" value="<%=cInfo.getCaddress()%>"></th>
				<th align="center"><input type="text" name="ceoname" value="<%=cInfo.getCeoname()%>"></th>
				<th align="center"><input type="text" name="ceotel" value="<%=cInfo.getCeotel()%>"></th>
			</tr>
			<tr>
				<th><input type="button" onclick="location.href='CustomerUpdate.jsp'" value="�ڷ�"></th>
				<th></th>
				<th></th>
				<th></th>
				<th align="center"><input type="submit" value="����"></th>
			</tr>

		</table>

	</form>

</body>
</html>