package org.semierp.controllers.Humen.Department;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.controllers.Controller;
import org.semierp.vo.departmentInfo;

public class DepartmentController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM department ORDER BY deno ASC;";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		
		List<departmentInfo> departments = new ArrayList<departmentInfo>();
		
		while(rs.next()){
			departmentInfo department = new departmentInfo();
			
			department.setDename(rs.getString("dename"));
			department.setDeno(Integer.parseInt(rs.getString("deno")));
			department.setDetel1(rs.getString("detel1"));
			department.setDetel2(rs.getString("detel2"));
			if(rs.getString("emno") == null){
				department.setEmno(-99);
			}
			else{
				department.setEmno(Integer.parseInt(rs.getString("emno")));
			}
			departments.add(department);
		}
		
		request.setAttribute("departments", departments);
		
		rs.close();
		st.close();
		conn.close();
		
		String requestUri = request.getRequestURI();
		String[] longReturn = requestUri.split("/");
		String[] longReturn2 = longReturn[(longReturn.length)-1].split("\\.");
		String returnString = longReturn2[0]+".jsp";
		
		return returnString;
	}
}



