<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Semi-ERP</title>
</head>
<body>
	<form action="EmployeeJoinProc.jsp" method="post">
		<table align="center">
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			
			<tr>
				<td align="center">직원코드</td>
				<td>:</td>
				<td><input type="text" name="emno" value="" /></td>
			</tr>
			<tr>
				<td align="center">ID</td>
				<td>:</td>
				<td><input type="text" name="id" value="" /></td>
			</tr>
			<tr>
				<td align="center">PW</td>
				<td>:</td>
				<td><input type="text" name="pw" value="" /></td>
			</tr>
			
			<tr>
				<th><input type="button" onclick="location.href='Join.jsp'" value="뒤로"></th>
				<td><input type="submit" name="save" value="등록"></td>
			</tr>
		</table>
	</form>
</body>
</html>