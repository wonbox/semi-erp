package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.managerInfo;

public class managerDao {

	public void insertCustomerManager(int cmno, int cno, String cmname, String cmaddress, String cmtel, String cmposition)
			throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "INSERT INTO customermanager VALUES(" + cmno + ",'" + cno + "','" + cmname + "','" + cmaddress + "','" + cmtel + "','"
				+ cmposition + "');";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void deleteCustomerManager(int cmno) throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "DELETE FROM customermanager WHERE cmno = " + cmno + ");";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public managerInfo selectCustomerManager(int cmno) throws ClassNotFoundException, SQLException {
		managerInfo customer = new managerInfo();
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM customermanager WHERE cmno='" + cmno + "'";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		rs.next();

		customer.setMno(Integer.parseInt(rs.getString("cmno")));
		customer.setNo(Integer.parseInt(rs.getString("cno")));
		customer.setMname(rs.getString("cmname"));
		customer.setMtel(rs.getString("cmtel"));
		customer.setMaddress(rs.getString("cmaddress"));
		customer.setMposition(rs.getString("cmposition"));

		rs.close();
		st.close();
		conn.close();

		return customer;
	}

	public void updateCustomerManager(int cmno, int cno, String cmname, String cmaddress, String cmtel, String cmposition)
			throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "UPDATE customermanager SET cno=" + cno + ", cmname='" + cmname + "',cmaddress='" + cmaddress + "',cmtel='" + cmtel
				+ "',cmposition='" + cmposition + " WHERE cno=" + cmno + ");";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void insertSupplierManager(int smno, int sno, String smname, String smaddress, String smtel, String smposition)
			throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "INSERT INTO suppliermanager VALUES(" + smno + ",'" + sno + "','" + smname + "','" + smaddress + "','" + smtel + "','"
				+ smposition + "');";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void deleteSupplierCustomerManager(int smno) throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "DELETE FROM suppliermanager WHERE smno = " + smno + ");";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public managerInfo selectSupplierCustomerManager(int smno) throws ClassNotFoundException, SQLException {
		managerInfo customer = new managerInfo();
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM suppliermanager WHERE smno='" + smno + "'";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		rs.next();

		customer.setMno(Integer.parseInt(rs.getString("smno")));
		customer.setNo(Integer.parseInt(rs.getString("sno")));
		customer.setMname(rs.getString("smname"));
		customer.setMtel(rs.getString("smtel"));
		customer.setMaddress(rs.getString("smaddress"));
		customer.setMposition(rs.getString("smposition"));

		rs.close();
		st.close();
		conn.close();

		return customer;
	}

	public void updateSupplierCustomerManager(int smno, int sno, String smname, String smaddress, String smtel, String smposition)
			throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "UPDATE suppliermanager SET sno=" + sno + ", smname='" + smname + "',smaddress='" + smaddress + "',smtel='" + smtel
				+ "',smposition='" + smposition + " WHERE sno=" + smno + ");";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

}
