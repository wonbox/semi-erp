package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.productinlogInfo;

public class productinlogDao {

	public void insert(int pno, String pname, int insize, String indate) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "INSERT INTO productinlog VALUES(" + pno + ",'" + pname + "'," + insize + ",'" + indate + "');";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void delete(int pno) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "DELETE FROM productinlog WHERE pno=" + pno + ";";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public productinlogInfo select(int pno) throws ClassNotFoundException, SQLException {
		productinlogInfo productinlog = new productinlogInfo();

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM productinlog WHERE pno='" + pno + "';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);

		rs.next();
		productinlog.setPno(Integer.parseInt(rs.getString("pno")));
		productinlog.setPname(rs.getString("pname"));
		productinlog.setInsize(Integer.parseInt(rs.getString("insize")));
		productinlog.setIndate(rs.getString("indate"));

		rs.close();
		st.close();
		conn.close();
		return productinlog;
	}

	public void update(int pno, String pname, int insize, String indate) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "UPDATE productinlog SET pname='" + pname + "', insize='" + insize + "',indate='" + indate + "' WHERE pno='" + pno
				+ "'";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}
}
