<%@page import="org.semierp.vo.managerInfo"%>
<%@page import="org.semierp.dao.managerDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Semi-ERP</title>
</head>
<body>
	<form action="CustomerManagerUpdateProc.jsp?cmno=<%=request.getParameter("cmno")%>" method="post">
		<%
			managerDao mDao = new managerDao();
			managerInfo mInfo = mDao.selectCustomerManager(Integer.parseInt(request.getParameter("cmno")));
		%>

		<table align="center">
			<tr>
				<th>����� �ڵ�</th>
				<th>�� �ڵ�</th>
				<th>����� �̸�</th>
				<th>�ּ�</th>
				<th>����ó</th>
				<th>����</th>
			</tr>
			<tr>
				<th align="center"><%=request.getParameter("cmno")%></th>
				<th align="center"><input type="text" name="cno" value="<%=mInfo.getNo()%>"></th>
				<th align="center"><input type="text" name="cmname" value="<%=mInfo.getMname()%>"></th>
				<th align="center"><input type="text" name="cmaddress" value="<%=mInfo.getMaddress()%>"></th>
				<th align="center"><input type="text" name="cmtel" value="<%=mInfo.getMtel()%>"></th>
				<th align="center"><input type="text" name="cmposition" value="<%=mInfo.getMposition()%>"></th>
			</tr>
			<tr>
				<th><input type="button" onclick="location.href='CustomerManagerUpdate.jsp'" value="�ڷ�"></th>
				<th></th>
				<th></th>
				<th></th>
				<th align="center"><input type="submit" value="����"></th>
			</tr>

		</table>

	</form>

</body>
</html>