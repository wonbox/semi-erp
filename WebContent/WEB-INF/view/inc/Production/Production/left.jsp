<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="Production.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>���� �ҿ䷮ ��ȹ</h3></a></li>
						<li><a href="./ProductionComponent/ProductionComponent.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� �ҿ䷮ ��ȹ</a></li>
						<li><a href="ProductionInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ��� �߰�</a></li>
						<li><a href="ProductionUpdate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ���� ����</a></li>
						<li><a href="ProductionDelete.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ��� ����</a></li>
					</ul>
				</div>