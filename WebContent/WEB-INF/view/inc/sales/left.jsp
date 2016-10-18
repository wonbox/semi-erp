<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="/semierp/view/sales/sales.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>영업관리</h3></a></li>
						<li><a href="/semierp/view/sales/yearplan/yearplan.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">월판매계획</a></li>
						<li><a href="/semierp/view/sales/estimate/estimate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">견적</a></li>
						<li><a href="/semierp/view/sales/productout/productout.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">출고</a></li>
						
						
					</ul>
				</div>