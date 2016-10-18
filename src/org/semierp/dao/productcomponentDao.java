package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.productcomponentInfo;

public class productcomponentDao {
	public void insert(int pno, int p1no, int p1num) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");

		String query1 = "INSERT INTO productcomponent VALUES("+pno+","+p1no+","+p1num+",0,0,0,0,0,0);";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public void insert(int pno, int p1no, int p1num, int p2no, int p2num) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");

		String query1 = "INSERT INTO productcomponent VALUES("+pno+","+p1no+","+p1num+","+p2no+","+p2num+",0,0,0,0);";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public void insert(int pno, int p1no, int p1num, int p2no, int p2num, int p3no, int p3num) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");

		String query1 = "INSERT INTO productcomponent VALUES("+pno+","+p1no+","+p1num+","+p2no+","+p2num+","+p3no+","+p3num+",0,0);";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public void insert(int pno, int p1no, int p1num, int p2no, int p2num, int p3no, int p3num, int p4no, int p4num) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");

		String query1 = "INSERT INTO productcomponent VALUES("+pno+",'"+p1no+"',"+p1num+","+p2no+","+p2num+","+p3no+","+p3num+","+p4no+","+p4num+");";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public void delete(int pno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "DELETE FROM productcomponent WHERE pno="+pno+";";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public productcomponentInfo select(int pno) throws ClassNotFoundException, SQLException{
		productcomponentInfo productcomponent = new productcomponentInfo();
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM productcomponent WHERE pno='"+pno+"';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		
		rs.next();
		productcomponent.setPno(Integer.parseInt(rs.getString("pno")));
		productcomponent.setP1no(Integer.parseInt(rs.getString("p1no")));
		productcomponent.setP1num(Integer.parseInt(rs.getString("p1num")));
		productcomponent.setP2no(Integer.parseInt(rs.getString("p2no")));
		productcomponent.setP2num(Integer.parseInt(rs.getString("p2num")));
		productcomponent.setP3no(Integer.parseInt(rs.getString("p3no")));
		productcomponent.setP3num(Integer.parseInt(rs.getString("p3num")));
		productcomponent.setP4no(Integer.parseInt(rs.getString("p4no")));
		productcomponent.setP4num(Integer.parseInt(rs.getString("p4num")));
		
		return productcomponent;
	}
	public void update(int pno, int p1no, int p1num, int p2no, int p2num, int p3no, int p3num, int p4no, int p4num) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		String query1 = "UPDATE productcomponent SET p1no='"+p1no+"', p1num='"+p1num+"',p2no='"+p2no+"', p2num='"+p2num+"',p3no='"+p3no+"', p3num='"+p3num+"',p4no='"+p4no+"', p4num='"+p4num+"' WHERE pno='"+pno+"'";
		
		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
}
