<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Semi-ERP</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://ddong_J.iptime.org:43306/semierp","test1","abcd1234");

String query1 = "SELECT * FROM h_department;";

Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query1);
%>
<table border='1'>
	<tr>
		<th>deptNo  </th>
		<th>name </th>
		<th>managerNo </th>
	</tr>
<%
while(rs.next()){
	%>
	<tr>
		<th><%=rs.getString("deptNo")%></th>
		<th><%=rs.getString("name_")%></th>
		<th><%=rs.getString("managerNo")%></th>
	</tr>
	<%
}

rs.close();
st.close();
conn.close();
%>
	
	
</table>

</body>
</html>