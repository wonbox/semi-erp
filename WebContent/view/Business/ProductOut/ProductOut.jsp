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
Connection conn = DriverManager.getConnection("jdbc:mysql://ddong_J.iptime.org:43306/test","test1","abcd1234");

String query1 = "SELECT * FROM productoutlog ORDER BY outdate desc;";

Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query1);

%>
	<table align="center">
		<tr>
			<td><input type="button"
				onclick="location.href='ProductOutInsert.jsp'" value="생산품 출고"></td>
			<td><input type="button"
				onclick="location.href='ProductOutUpdate.jsp'" value="기록 수정"></td>
			<td><input type="button"
				onclick="location.href='ProductOutDelete.jsp'" value="기록 삭제"></td>
			<td>검색(미완)</td>
		</tr>

	</table>
	<table align="center" border='1'>
		<tr>
			<th>제품 코드</th>
			<th>제품 명</th>
			<th>출고량</th>
			<th>출고 날짜</th>
			<th>고객 코드</th>
		</tr>
		<%
while(rs.next()){
	%>
		<tr>
			<th><%=rs.getString("pno")%></th>
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
			<th><input type="button" onclick="location.href='../Humen.jsp'"
				value="뒤로"></th>
		</tr>
	</table>
</body>
</html>