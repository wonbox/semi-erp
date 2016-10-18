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

String query1 = "SELECT * FROM saletocustomerlist;";

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
				onclick="location.href='EstimateInsert.jsp'" value="주문서 추가"></td>
			<td>검색(미완)</td>
	</tr>

</table>
<table align="center" border='1'>
	<tr>
		<th>주문 코드</th>
		<th>제품1</th>
		<th>제품1 수량</th>
		<th>제품2</th>
		<th>제품2 수량</th>
		<th>제품3</th>
		<th>제품3 수량</th>
		<th>주문 일자</th>
		<th>회사 코드</th>
	</tr>
<%
while(rs.next()){
	%>
	<tr>
		<th><%=rs.getString("salelistno")%></th>
		<th><%=rs.getString("p1no")%></th>
		<th><%=rs.getString("p1num")%></th>
		<th><%=rs.getString("p2no")%></th>
		<th><%=rs.getString("p2num")%></th>
		<th><%=rs.getString("p3no")%></th>
		<th><%=rs.getString("p3num")%></th>
		<th><%=rs.getString("salelistdate")%></th>
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
				<th><input type="button" onclick="location.href='../Business.jsp'" value="뒤로"></th>
			</tr>
		</table>
</body>
</html>