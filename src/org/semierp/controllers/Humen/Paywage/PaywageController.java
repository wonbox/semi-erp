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

public class PaywageController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT e.emno, e.emname, mp.amount, m.mpamount, m.mpstepbonus, m.mpmonth, m.mpdate";
		query1 += " FROM employee e, mplist mp, monthpay m";
		query1 += " WHERE e.emno = mp.emno AND m.mpno = mp.mpno;";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		
		List<paywageInfo> paywages = new ArrayList<paywageInfo>();
		
		while(rs.next()){
			paywageInfo paywage = new paywageInfo();
			
			paywage.setEmno(rs.getString("e.emno"));
			paywage.setEmname(rs.getString("e.emname"));
			paywage.setAmount(rs.getString("mp.amount"));
			paywage.setMpamount(rs.getString("m.mpamount"));
			paywage.setMpstepbonus(rs.getString("m.mpstepbonus"));
			paywage.setMpmonth(rs.getString("m.mpmonth"));
			paywage.setMpdate(rs.getString("m.mpdate"));
			
			paywages.add(paywage);
		}
		
		request.setAttribute("paywages", paywages);
		
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



