<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="/semierp/view/Production/Production.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>���� ����</h3></a></li>
						<li><a href="/semierp/view/Production/Production/Production.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� �ҿ䷮ ��ȹ</a></li>
						<li><a href="/semierp/view/Production/ProductionIn/ProductionIn.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ��ȹ</a></li>
						<li><a href="/semierp/view/Production/ProductionOut/ProductionOut.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">����</a></li>
					</ul>
				</div>