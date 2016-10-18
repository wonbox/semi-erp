package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class estimateDao {
	public void insert(int pno, int p1no, int p1num, int p2no, int p2num, int p3no, int p3num, String salelistdate, int cno)
			throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "INSERT INTO saletocustomerlist VALUES("+pno+","+p1no+","+p1num+","+p2no+","+p2num+","+p3no+","+p3num+",'"+salelistdate+"',"+cno+");";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}
}
