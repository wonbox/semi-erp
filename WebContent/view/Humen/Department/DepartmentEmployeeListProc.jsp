
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.semierp.vo.employeeInfo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	List<employeeInfo> employees = new ArrayList<employeeInfo>();
	
	int deno = Integer.parseInt(request.getParameter("selectDeno"));

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");
	String query1 = "SELECT e.emname, e.emaddress, e.emtel, e.emposition, e.emjoindate, e.emdiv FROM employee e, department d WHERE e.emdiv <> '퇴사' and d.deno='"+deno+"' ORDER BY e.emdiv DESC ;";

	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(query1);
	while(rs.next()){
		employeeInfo emInfo = new employeeInfo();
		emInfo.setEmname(rs.getString("e.emname"));
		emInfo.setEmaddress(rs.getString("e.emaddress"));
		emInfo.setEmtel(rs.getString("e.emtel"));
		emInfo.setEmposition(rs.getString("e.emposition"));
		emInfo.setEmjoindate(rs.getString("e.emjoindate"));
		emInfo.setEmdiv(rs.getString("e.emdiv"));
		employees.add(emInfo);
	}
	
	request.setAttribute("employees", employees);
	request.getRequestDispatcher("DepartmentEmployeeList.jsp").forward(request, response);
%>