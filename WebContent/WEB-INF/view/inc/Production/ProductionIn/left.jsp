<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="ProductionIn.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>���� ��ȹ</h3></a></li>
						<li><a href="ProductionInInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� �߰�</a></li>
						<li><a href="ProductionUpdate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ����</a></li>
						<li><a href="ProductionDelete.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ����</a></li>
					</ul>
				</div>