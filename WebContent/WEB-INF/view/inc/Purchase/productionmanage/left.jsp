<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="ComponentOut.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>��ǰ����</h3></a></li>
						<li><a href="ComponentOutUpdate1.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ǰ ����</a></li>
						<li><a href="ComponentOutInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ǰ �߰�</a></li>
				    </ul>
				</div>