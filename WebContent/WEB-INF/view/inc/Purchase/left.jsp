<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="/semierp/view/Purchase/Purchase.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>���� ����</h3></a></li>
						<li><a href="/semierp/view/Purchase/purchasemanage/ComponentIn.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ǰ����</a></li>
						<li><a href="/semierp/view/Purchase/productionmanage/ComponentOut.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ǰ����</a></li>
						<li><a href="/semierp/view/Purchase/productionout/Stock.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ǰ������</a></li>
					</ul>
				</div>