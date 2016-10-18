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
Connection conn = DriverManager.getConnection("jdbc:mysql://ddong_J.iptime.org:43306/test","test1","abcd1234");

String query1 = "SELECT * FROM department;";

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
				onclick="location.href='DepartmentInsert.jsp'" value="부서 추가"></td>
			<td><input type="button"
				onclick="location.href='DepartmentEmployeeList.jsp'" value="소속 직원"></td>
			<td><input type="button"
				onclick="location.href='DepartmentUpdate.jsp'" value="수정"></td>
			<td><input type="button"
				onclick="location.href='DepartmentDelete.jsp'" value="삭제"></td>
			<td>검색(미완)</td>
	</tr>

</table>
<table align="center" border='1'>
	<tr>
		<th>부서 코드</th>
		<th>부서 명</th>
		<th>전화1</th>
		<th>전화2</th>
		<th>관리자</th>
	</tr>
<%
while(rs.next()){
	%>
	<tr>
		<th><%=rs.getString("deno")%></th>
		<th><%=rs.getString("dename")%></th>
		<th><%=rs.getString("detel1")%></th>
		<th><%=rs.getString("detel2")%></th>
		<%if((rs.getString("emno")==null) ||(rs.getString("emno").isEmpty()) ||  (rs.getString("emno").equals(""))){ %>
		<th>없음</th>
		<%}else{ %>
		<th><%=rs.getString("emno")%></th>
		<%} %>
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
				<th><input type="button" onclick="location.href='../Humen.jsp'" value="뒤로"></th>
			</tr>
		</table>
</body>
</html>