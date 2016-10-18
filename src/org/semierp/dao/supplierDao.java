package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.supplierInfo;


public class supplierDao {
	public void insert(int sno, String sname, String stel, String saddress, String ceoname, String ceotel) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");

		String query1 = "INSERT INTO productcompin VALUES("+sno+",'"+sname+"',"+stel+",'"+saddress+"',"+ceoname+","+ceotel+");";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	
	public void delete(int sno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "DELETE FROM supplier WHERE pno="+sno+";";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public supplierInfo select(int sno) throws ClassNotFoundException, SQLException{
		supplierInfo supplier = new supplierInfo();
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM supplier WHERE sno='"+sno+"';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		
		rs.next();
		supplier.setSno(Integer.parseInt(rs.getString("sno")));
		supplier.setSname(rs.getString("sname"));
		supplier.setStel(rs.getString("stel"));
		supplier.setSaddress(rs.getString("saddress"));
		supplier.setCeoname(rs.getString("ceoname"));
		supplier.setCeotel(rs.getString("ceotel"));
		
		return supplier;
	}
	public void update(int sno, String sname, String stel, String saddress, String ceoname, String ceotel) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		String query1 = "UPDATE supplier SET sname='"+sname+"', stel='"+stel+"',saddress='"+saddress+"',ceoname='"+ceoname+"',ceotel='"+ceotel+"' WHERE sno='"+sno+"'";
		
		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
}
