<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Semi-ERP</title>
</head>
<body>
<form action="EstimateInsertProc.jsp" method="post">
		<table align="center">
		<tr>
				<td align="center">제품 코드</td>
				<th>:</th>
				<td><input type="text" name="pno" value="" /></td>
			</tr>
			<tr>
				<td align="center">제품1</td>
				<th>:</th>
				<td><input type="text" name="p1no" value="" /></td>
			</tr>
			<tr>
				<td align="center">제품1 수량</td>
				<th>:</th>
				<td><input type="text" name="p1num" value="" /></td>
			</tr>
			<tr>
				<td align="center">제품2</td>
				<th>:</th>
				<td><input type="text" name="p2no" value="" /></td>
			</tr>
			<tr>
				<td align="center">제품2 수량</td>
				<th>:</th>
				<td><input type="text" name="p2num" value="" /></td>
			</tr>
			<tr>
				<td align="center">제품3</td>
				<th>:</th>
				<td><input type="text" name="p3no" value="" /></td>
			</tr>
			<tr>
				<td align="center">제품3 수량</td>
				<th>:</th>
				<td><input type="text" name="p3num" value="" /></td>
			</tr>
			<tr>
				<td align="center">주문 일자</td>
				<th>:</th>
				<td><input type="text" name="salelistdate" value="" /></td>
			</tr>
			<tr>
				<td align="center">회사 코드</td>
				<th>:</th>
				<td><input type="text" name="cno" value="" /></td>
			</tr>
			
			<tr>
				<th><input type="button" onclick="location.href='Estimate.jsp'" value="뒤로"></th>
				<th></th>
				<th></th>
				<th></th>
				<th align="center"><input type="submit" value="주문"></th>
			</tr>

		</table>

	</form>
</body>
</html>