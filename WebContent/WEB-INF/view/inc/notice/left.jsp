<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
	<ul class="nav">
		<li><a href="/semierp/view/notice/notice.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>�Խ���</h3></a></li>
		<li><a href="/semierp/view/notice/noticeReg.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�۾���</a></li>
		<li><a href="/semierp/view/notice/noticeDel.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�� ����</a></li>
	</ul>
</div>