<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<div class="navbar-header">
	<button type="button" class="navbar-toggle" data-toggle="collapse"
		data-target=".navbar-collapse">
		<span class="icon-bar"></span> <span class="icon-bar"></span> <span
			class="icon-bar"></span>
	</button>
	<a class="navbar-brand" href="/semierp/mainUI.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">㈜개신학용품 ERP</a>
</div>
<div class="collapse navbar-collapse">
	<ul class="nav navbar-nav">
		<li class="active"><a href="/semierp/mainUI.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">홈</a></li>
		<li><a href="/semierp/view/notice/notice.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">게시판</a></li>
		<%
		if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("1") ){
		%>
		<li><a href="/semierp/view/Humen/Humen.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">인사 관리</a></li>
		<%
		}
		if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("2") ){
		%>
		<li><a href="/semierp/view/sales/sales.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">영업 관리</a></li>
		<%
		}
		if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("3") ){
		%>
		<li><a href="/semierp/view/Purchase/Purchase.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">자재 관리</a></li>
		<%
		}
		if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("4") ){
		%>
		<li><a href="/semierp/view/PurchaseQuality/PurchaseQuality.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">자재 품질 관리</a></li>		
		<%
		}
		if (request.getParameter("deno").equals("0") ||request.getParameter("deno").equals("5") ){
		%>
		<li><a href="/semierp/view/Production/Production.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">생산 관리</a></li>
		<%} %>
	</ul>
</div>