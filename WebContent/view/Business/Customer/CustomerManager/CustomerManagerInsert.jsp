<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Semi-ERP</title>
</head>
<body>
<form action="CustomerManagerInsertProc.jsp" method="post">
		<table align="center">
		<tr>
				<td align="center">담당자 코드</td>
				<th>:</th>
				<td><input type="text" name="cmno" value="" /></td>
			</tr>
			<tr>
				<td align="center">고객 코드</td>
				<th>:</th>
				<td><input type="text" name="cno" value="" /></td>
			</tr>
			<tr>
				<td align="center">담당자 이름</td>
				<th>:</th>
				<td><input type="text" name="cmname" value="" /></td>
			</tr>
			<tr>
				<td align="center">주소</td>
				<th>:</th>
				<td><input type="text" name="cmaddress" value="" /></td>
			</tr>
			<tr>
				<td align="center">연락처</td>
				<th>:</th>
				<td><input type="text" name="cmtel" value="" /></td>
			</tr>
			<tr>
				<td align="center">직급</td>
				<th>:</th>
				<td><input type="text" name="cmposition" value="" /></td>
			</tr>
			<tr>
				<th><input type="button" onclick="location.href='CustomerManager.jsp'" value="뒤로"></th>
				<th></th>
				<th></th>
				<th></th>
				<th align="center"><input type="submit" value="추가"></th>
			</tr>

		</table>

	</form>
</body>
</html>