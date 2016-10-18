package org.semierp.controllers.Humen.Paywage;

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
import org.semierp.vo.paywageInfo;

public class PaywageDepartmentController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT m.mpdate, d.dename, SUM(mp.amount) as total";
		query1 += " FROM mplist mp, department d, employee e, monthpay m";
		query1 += " WHERE mp.emno = e.emno and e.deno = d.deno and m.mpno = mp.mpno;";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		

		List<paywageInfo> paywages = new ArrayList<paywageInfo>();
			
		while(rs.next()){
			paywageInfo paywage = new paywageInfo();
			paywage.setEmname(rs.getString("d.dename"));
			paywage.setAmount(rs.getString("total"));
			paywage.setMpdate(rs.getString("m.mpdate"));
			
			paywages.add(paywage);
		}
		
		request.setAttribute("paywages", paywages);
		
		rs.close();
		st.close();
		conn.close();
		
		
		
		return "PaywageDepartment.jsp";
	}
}



