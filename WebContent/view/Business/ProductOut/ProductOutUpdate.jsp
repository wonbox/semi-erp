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

	<form action="ProductOutUpdateContent.jsp" method="post">
		<table align="center" border='1'>
			<tr>
				<th>제품 코드</th>
				<th>제품 명</th>
				<th>출고량</th>
				<th>출고 날짜</th>
				<th>고객 코드</th>
			</tr>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://ddong_J.iptime.org:43306/test", "test1", "abcd1234");

				String query1 = "SELECT * FROM productoutlog ORDER BY outdate desc;";

				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(query1);
				while (rs.next()) {
			%>
			<tr>
				<th><%=rs.getString("pno")%></th>
				<th align="center"><a
					href="ProductOutUpdateContent.jsp?pno=<%=rs.getString("pno")%>"><%=rs.getString("pname")%></a></th>
				<th><%=rs.getString("pname")%></th>
				<th><%=rs.getString("outsize")%></th>
				<th><%=rs.getString("outdate")%></th>
				<th><%=rs.getString("cno")%></th>
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
				<th><input type="button" onclick="location.href='ProductOut.jsp'"
					value="뒤로"></th>
			</tr>
		</table>
	</form>
</body>
</html>