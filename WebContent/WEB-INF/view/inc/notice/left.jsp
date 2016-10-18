<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
	<ul class="nav">
		<li><a href="/semierp/view/notice/notice.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>게시판</h3></a></li>
		<li><a href="/semierp/view/notice/noticeReg.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">글쓰기</a></li>
		<li><a href="/semierp/view/notice/noticeDel.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">글 삭제</a></li>
	</ul>
</div>