<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
						<ul class="nav">
						<li><a href="yearplan.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>���ǸŰ�ȹ</h3></a></li>
						<li><a href="yearplanInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ȹ �߰�</a></li>	
						<li><a href="yearplanupdate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ȹ ����</a></li>	
						<li><a href="yearplandelete.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ȹ ����</a></li>	
						</ul>
					</div>