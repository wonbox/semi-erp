package org.semierp.controllers.Humen.Paywage;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.controllers.Controller;
import org.semierp.vo.departmentInfo;
import org.semierp.vo.paywageInfo;
import org.semierp.vo.paywageInsertInfo;

public class PaywageInsertController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.KOREA);
		Date currentTime = new Date();
		String dTime = formatter.format(currentTime);
		String[] dates = dTime.split(" ");
		String[] days = dates[0].split("-");
		int mpyear = Integer.parseInt(days[0]);
		int mpmonth = Integer.parseInt(days[1]);

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT e.emno, e.emname, e.emposition, e.emdiv, mp.mpno, m.mpstepbonus, m.mpamount";
		query1 += " FROM monthpay m, employee e, mplist mp";
		query1 += " WHERE YEAR(mpdate)=" + mpyear + " and MONTH(mpdate) <> " + mpmonth + " and m.mpno = mp.mpno and e.emno = mp.emno;";
		
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		rs.next();
		String mpno = rs.getString("mp.mpno");
		String mpamount = rs.getString("m.mpamount");
		String mpstepbonus = rs.getString("m.mpstepbonus");
		
		List<paywageInsertInfo> paywages = new ArrayList<paywageInsertInfo>();
		
		do{
			paywageInsertInfo paywage = new paywageInsertInfo();
			
			paywage.setEmno(rs.getString("e.emno"));
			paywage.setEmname(rs.getString("e.emname"));
			paywage.setEmposition(rs.getString("e.emposition"));
			paywage.setEmdiv(rs.getString("e.emdiv"));
			
			paywages.add(paywage);
		}while(rs.next());
		request.setAttribute("mpno", mpno);
		request.setAttribute("mpamount", mpamount);
		request.setAttribute("mpstepbonus", mpstepbonus);
		request.setAttribute("mpyear", mpyear);
		request.setAttribute("mpmonth", mpmonth);
		request.setAttribute("paywages", paywages);
		
		rs.close();
		st.close();
		conn.close();
		
		
		return "PaywageInsert.jsp";
	}
}



