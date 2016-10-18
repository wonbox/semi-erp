<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
						<ul class="nav">
						<li><a href="yearplan.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>월판매계획</h3></a></li>
						<li><a href="yearplanInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">계획 추가</a></li>	
						<li><a href="yearplanupdate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">계획 수정</a></li>	
						<li><a href="yearplandelete.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">계획 삭제</a></li>	
						</ul>
					</div>