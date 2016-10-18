<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="/semierp/view/Production/Production.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>생산 관리</h3></a></li>
						<li><a href="/semierp/view/Production/Production/Production.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">자재 소요량 계획</a></li>
						<li><a href="/semierp/view/Production/ProductionIn/ProductionIn.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">생산 계획</a></li>
						<li><a href="/semierp/view/Production/ProductionOut/ProductionOut.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">생산</a></li>
					</ul>
				</div>