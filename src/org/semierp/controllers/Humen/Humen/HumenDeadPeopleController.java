package org.semierp.controllers.Humen.Humen;

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
import org.semierp.vo.humenInfo;

public class HumenDeadPeopleController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT emdiv, e.emno, dename, emname, emaddress, emtel, emposition, emjoindate";
		query1 += " FROM employee e, department d";
		query1 += " WHERE  emdiv <> '퇴사' and d.deno = e.deno ORDER BY dename asc;";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		
		List<humenInfo> humens = new ArrayList<humenInfo>();
		
		while(rs.next()){
			humenInfo humen = new humenInfo();
			humen.setEmdiv(rs.getString("emdiv"));
			humen.setEmno(rs.getString("e.emno"));
			humen.setDename(rs.getString("dename"));
			humen.setEmname(rs.getString("emname"));
			humen.setEmaddress(rs.getString("emaddress"));
			humen.setEmtel(rs.getString("emtel"));
			humen.setEmposition(rs.getString("emposition"));
			humen.setEmjoindate(rs.getString("emjoindate"));
			
			humens.add(humen);
		}
		
		request.setAttribute("humens", humens);
		
		rs.close();
		st.close();
		conn.close();
		
		return "HumenDeadPeople.jsp";
	}
}



