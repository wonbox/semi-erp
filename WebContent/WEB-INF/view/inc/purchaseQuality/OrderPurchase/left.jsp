<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
	<ul class="nav">
		<li><a href="OrderPurchase.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>���� ����</h3></a></li>
		<li><a href="OrderPurchaseInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">����</a></li>
		<li><a href="OrderPurchaseDelete.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��� ����</a></li>
	</ul>
</div>