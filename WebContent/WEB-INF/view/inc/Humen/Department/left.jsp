<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="/semierp/view/Humen/Department/Department.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>�μ� ����</h3></a></li>
						<li><a href="/semierp/view/Humen/Department/DepartmentInsert.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�μ� �߰�</a></li>
						<li><a href="/semierp/view/Humen/Department/DepartmentEmployeeList.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�Ҽ� ����</a></li>
						<li><a href="/semierp/view/Humen/Department/DepartmentUpdate.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ����</a></li>
						<li><a href="/semierp/view/Humen/Department/DepartmentDelete.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">����</a></li>
					</ul>
				</div>