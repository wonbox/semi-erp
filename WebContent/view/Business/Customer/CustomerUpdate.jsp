<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Semi-ERP</title>
</head>
<body>

	<form action="CustomerUpdateContent.jsp" method="post">
		<table align="center" border='1'>
			<tr>
				<th>고객 코드</th>
				<th>고객 명</th>
				<th>연락처</th>
				<th>주소</th>
				<th>CEO 이름</th>
				<th>CEO 연락처</th>
			</tr>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://ddong_J.iptime.org:43306/test", "test1", "abcd1234");

				String query1 = "SELECT * FROM customer;";

				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(query1);
				while (rs.next()) {
			%>
			<tr>
				<th><%=rs.getString("cno")%></th>
				<th align="center"><a
					href="CustomerUpdateContent.jsp?cno=<%=rs.getString("cno")%>"><%=rs.getString("cname")%></a></th>
				<th><%=rs.getString("ctel")%></th>
				<th><%=rs.getString("caddress")%></th>
				<th><%=rs.getString("ceoname")%></th>
				<th><%=rs.getString("ceotel")%></th>
			</tr>
			<%
				}
				rs.close();
				st.close();
				conn.close();
			%>
		</table>
		<table align="center">
			<tr>
				<th><input type="button" onclick="location.href='Customer.jsp'"
					value="뒤로"></th>
			</tr>
		</table>
	</form>
</body>
</html>