package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.customerInfo;

public class customerDao {
	public void insert(int cno,String cname,String ctel,String caddress,String ceoname,String ceotel) throws ClassNotFoundException, SQLException{

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "INSERT INTO customer VALUES("+cno+",'"+cname+"','"+ctel+"','"+caddress+"','"+ceoname+"','"+ceotel+"');";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public void delete(int cno) throws ClassNotFoundException, SQLException{

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "DELETE FROM customer WHERE cno = "+cno+");";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public customerInfo select(int cno) throws ClassNotFoundException, SQLException{
		customerInfo customer = new customerInfo();
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "SELECT * FROM customer";

		Statement st = conn.createStatement();
		ResultSet rs =  st.executeQuery(query1);
		rs.next();
		
		customer.setCno(Integer.parseInt(rs.getString("cno")));
		customer.setCname(rs.getString("cname"));
		customer.setCtel(rs.getString("ctel"));
		customer.setCaddress(rs.getString("caddress"));
		customer.setCeoname(rs.getString("ceoname"));
		customer.setCeotel(rs.getString("ceotel"));
		
		rs.close();
		st.close();
		conn.close();
		
		
		return customer;
	}
	public void update(int cno,String cname,String ctel,String caddress,String ceoname,String ceotel) throws ClassNotFoundException, SQLException{

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "UPDATE customer SET cname='"+cname+"',ctel='"+ctel+"',caddress='"+caddress+"',ceoname='"+ceoname+"',ceotel='"+ceotel+"' WHERE cno="+cno+");";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
}
