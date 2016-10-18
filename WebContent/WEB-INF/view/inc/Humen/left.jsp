<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="Humen.htm"><h3>인사 관리</h3></a></li>
						<li><a href="/semierp/view/Humen/Department/Department.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">부서 관리</a></li>
						<li><a href="/semierp/view/Humen/Paywage/Paywage.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">월급 관리</a></li>
						<li><a href="/semierp/view/Humen/Humen/HumenInsert.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">직원 입사</a></li>
						<li><a href="/semierp/view/Humen/Humen/HumenPowerUp.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">정규직 전환</a></li>
						<li><a href="/semierp/view/Humen/Humen/HumenDeadPeople.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">퇴사</a></li>
						<li><a href="/semierp/view/Humen/Humen/HumenUpdate.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">정보 수정</a></li>
						<li><a href="/semierp/view/Humen/Humen/HumenDelete.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">삭제</a></li>
					</ul>
				</div>