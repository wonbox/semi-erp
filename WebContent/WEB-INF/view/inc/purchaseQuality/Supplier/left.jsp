<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
	<ul class="nav">
		<li><a href="Supplier.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>�ŷ�ó ����</h3></a></li>
		<li><a href="SupplierInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�ŷ�ó �߰�</a></li>
		<li><a href="SupplierUpdate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ����</a></li>
		<li><a href="SupplierDelete.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�ŷ�ó ����</a></li>
	</ul>
</div>