package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.yearplanInfo;

public class salesDao {
	public void insert(int yid, int pno, int sellnum, int sump, String month) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "INSERT INTO yearsellplan VALUES(" + yid + "," + pno + "," + sellnum + "," + sump + ",'" + month + "');";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void insert(int eid, String sname, int pno, String pname, int enum1, int price, int esum) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "INSERT INTO estimate VALUES(" + eid + ",'" + sname + "'," + pno + ",'" + pname + "'," + enum1 + "," + price + "," + esum
				+ ");";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void insert(int pout, int cno, String cname, int pno, String pname, int poutnum) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "INSERT INTO productout VALUES(" + pout + "," + cno + ",'" + cname + "'," + pno + ",'" + pname + "'," + poutnum + ");";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void delete(int yid) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "DELETE FROM yearsellplan WHERE yid=" + yid + ";";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void delete1(int eid) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "DELETE FROM estimate WHERE eid=" + eid + ";";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void delete2(int pout) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "DELETE FROM productout WHERE pout=" + pout + ";";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public yearplanInfo select(int pno, String pdiv) throws ClassNotFoundException, SQLException {
		yearplanInfo product = new yearplanInfo();

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM yearsellplan;";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);

		rs.next();
		product.setyid(Integer.parseInt(rs.getString("yid")));
		product.setpno(Integer.parseInt(rs.getString("pno")));
		product.setsellnum(Integer.parseInt(rs.getString("sellnum")));
		product.setsump(Integer.parseInt(rs.getString("sump")));
		product.setmonth((rs.getString("month")));

		return product;
	}

	public void update(int yid, int pno, int sellnum, int sump, String month) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "UPDATE yearsellplan SET pno='" + pno + "', sellnum='" + sellnum + "', sump='" + sump + "',month='" + month + "' WHERE yid='"
				+ yid + "'";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void update(int eid, int enum1, int esum) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "UPDATE estimate SET enum='" + enum1 + "', esum='" + esum + "' WHERE eid='" + eid + "'";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void update(int pno, int pnum) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		// String query1 =
		// "UPDATE product SET pnum='"+uppnum+"' WHERE pno='"+pno+"'";

		// Statement st = conn.createStatement();
		// st.execute(query1);

		// st.close();
		conn.close();
	}
}