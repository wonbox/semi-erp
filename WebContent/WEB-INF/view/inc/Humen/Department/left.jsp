<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="/semierp/view/Humen/Department/Department.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>부서 관리</h3></a></li>
						<li><a href="/semierp/view/Humen/Department/DepartmentInsert.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">부서 추가</a></li>
						<li><a href="/semierp/view/Humen/Department/DepartmentEmployeeList.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">소속 직원</a></li>
						<li><a href="/semierp/view/Humen/Department/DepartmentUpdate.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">정보 수정</a></li>
						<li><a href="/semierp/view/Humen/Department/DepartmentDelete.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">삭제</a></li>
					</ul>
				</div>