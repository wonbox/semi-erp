<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="ProductionComponent.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>���� �ҿ䷮ ��ȹ</h3></a></li>
						<li><a href="ProductionComponentInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ǰ ��� �߰�</a></li>
						<li><a href="ProductionComponentUpdate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ǰ ���� ����</a></li>
						<li><a href="ProductionComponentDelete.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ǰ ��� ����</a></li>
					</ul>
				</div>