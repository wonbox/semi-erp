<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="navbar-header">
	<button type="button" class="navbar-toggle" data-toggle="collapse"
		data-target=".navbar-collapse">
		<span class="icon-bar"></span> <span class="icon-bar"></span> <span
			class="icon-bar"></span>
	</button>
	<a class="navbar-brand" href="/semierp/mainUI.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�߰����п�ǰ ERP</a>
</div>
<div class="collapse navbar-collapse">
	<ul class="nav navbar-nav">
		<li class="active"><a href="/semierp/mainUI.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">Ȩ</a></li>
		<li><a href="/semierp/view/notice/notice.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�Խ���</a></li>
		<%
		if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("1") ){
		%>
		<li><a href="/semierp/view/Humen/Humen.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�λ� ����</a></li>
		<%
		}
		if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("2") ){
		%>
		<li><a href="/semierp/view/sales/sales.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ����</a></li>
		<%
		}
		if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("3") ){
		%>
		<li><a href="/semierp/view/Purchase/Purchase.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ����</a></li>
		<%
		}
		if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("4") ){
		%>
		<li><a href="/semierp/view/PurchaseQuality/PurchaseQuality.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ǰ�� ����</a></li>		
		<%
		}
		if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("5") ){
		%>
		<li><a href="/semierp/view/Production/Production.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ����</a></li>
		<%} %>
	</ul>
</div>