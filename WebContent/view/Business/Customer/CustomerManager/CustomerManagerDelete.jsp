<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Semi-ERP</title>
</head>
<body>
	<form action="CustomerManagerDeleteProc.jsp" method="post">
		<table align="center" border='1'>
			<tr>
				<th align="center">V</th>
				<th>담당자 코드</th>
				<th>고객 코드</th>
				<th>담당자 이름</th>
				<th>주소</th>
				<th>연락처</th>
				<th>직급</th>
			</tr>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://ddong_J.iptime.org:43306/test", "test1", "abcd1234");

				String query1 = "SELECT * FROM customermanager ORDER BY cno asc;";

				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(query1);
				while(rs.next()){
			%>
			<tr>
				<th><input type="checkbox" name="cmno"
					id="<%=rs.getString("cmno")%>" value="<%=rs.getString("cmno")%>" /><label
					for="<%=rs.getString("cmno")%>"></label></th>
				<th><%=rs.getString("cmno")%></th>
				<th><%=rs.getString("cno")%></th>
				<th><%=rs.getString("cmname")%></th>
				<th><%=rs.getString("cmaddress")%></th>
				<th><%=rs.getString("cmtel")%></th>
				<th><%=rs.getString("cmposition")%></th>

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
				<td><input type="button" onclick="location.href='CustomerManager.jsp'"
					value="뒤로"></td>
				<td><input type="submit" name="delete" value="삭제"></td>
			</tr>
		</table>
	</form>
</body>
</html>





