package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.monthpayInfo;

public class monthpayDao {
	public void insert(int mpmonth, int mpamount, int mpstepbonus, String mpdate) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");

		String query1 = "INSERT INTO monthpay(mpmonth, mpamount, mpstepbonus, mpdate) VALUES("+mpmonth+",'"+mpamount+"',"+mpstepbonus+",'"+mpdate+"');";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public monthpayInfo select() throws ClassNotFoundException, SQLException{
		monthpayInfo monthpay = new monthpayInfo();
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM monthpay ORDER BY mpno desc;";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		rs.next();
		
		monthpay.setMpno(Integer.parseInt(rs.getString("mpno")));
		monthpay.setMpmonth(Integer.parseInt(rs.getString("mpmonth")));
		monthpay.setMpamount(Integer.parseInt(rs.getString("mpamount")));
		monthpay.setMpstepbonus(Integer.parseInt(rs.getString("mpstepbonus")));
		monthpay.setMpdate(rs.getString("mpdate"));
		
		return monthpay;
	}
}
