<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Semi-ERP</title>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://ddong_J.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM customermanager ORDER BY cno asc;";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
	%>
	<table align="center">
		<tr>
			<td><input type="button"
				onclick="location.href='../../../mainUI.jsp'" value="홈"></td>
		</tr>
	</table>
	<table align="center">
		<tr>
			<td><input type="button"
				onclick="location.href='CustomerManagerInsert.jsp'" value="담당자 등록"></td>
			<td><input type="button"
				onclick="location.href='CustomerManagerUpdate.jsp'" value="정보 수정"></td>
			<td><input type="button"
				onclick="location.href='CustomerManagerDelete.jsp'" value="담당자 삭제"></td>
			<td>검색(미완)</td>
		</tr>

	</table>
	<table align="center" border='1'>
		<tr>
			<th>담당자 코드</th>
			<th>고객 코드</th>
			<th>담당자 이름</th>
			<th>주소</th>
			<th>연락처</th>
			<th>직급</th>
		</tr>
		<%
			while (rs.next()) {
		%>
		<tr>
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
			<th><input type="button" onclick="location.href='../Customer.jsp'"
				value="뒤로"></th>
		</tr>
	</table>
</body>
</html>