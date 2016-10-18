package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.productoutlogInfo;

public class productoutlogDao {
	public void insert(int pno, String pname, int outsize, String outdate, int cno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");

		String query1 = "INSERT INTO productoutlog VALUES("+pno+",'"+pname+"',"+outsize+",'"+outdate+"',"+cno+");";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	
	public void delete(int pno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "DELETE FROM productoutlog WHERE pno="+pno+";";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public productoutlogInfo select(int pno) throws ClassNotFoundException, SQLException{
		productoutlogInfo productoutlog = new productoutlogInfo();
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM productcompinlog WHERE pno='"+pno+"';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		
		rs.next();
		productoutlog.setPno(Integer.parseInt(rs.getString("pno")));
		productoutlog.setPname(rs.getString("pname"));
		productoutlog.setOutsize(Integer.parseInt(rs.getString("outsize")));
		productoutlog.setOutdate(rs.getString("outdate"));
		productoutlog.setCno(Integer.parseInt(rs.getString("cno")));
		
		rs.close();
		st.close();
		conn.close();
		return productoutlog;
	}
	public void update(int pno, String pname, int outsize, String outdate, int cno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		String query1 = "UPDATE productoutlog SET pname='"+pname+"', outsize='"+outsize+"',outdate='"+outdate+"',cno='"+cno+"' WHERE pno='"+pno+"'";
		
		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
}
