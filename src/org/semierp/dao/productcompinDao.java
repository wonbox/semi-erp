package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.semierp.vo.productInfo;
import org.semierp.vo.productcompinInfo;

public class productcompinDao {
	public void insert(int pno, String pname, int insize, String indate, int sno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");

		String query1 = "INSERT INTO productcompinlog VALUES("+pno+",'"+pname+"',"+insize+",'"+indate+"',"+sno+");";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public void insert(int pno, int insize, int sno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		productInfo p = new productInfo();
		productDao pdao = new productDao();
		p = pdao.select(pno);
		
		String query1 = "INSERT INTO productcompinlog VALUES("+pno+",'"+p.getPname()+"',"+insize+",'"+sdf.format(d)+"',"+sno+");";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	
	public void delete(int pno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "DELETE FROM productcompinlog WHERE pno="+pno+";";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public productcompinInfo select(int pno) throws ClassNotFoundException, SQLException{
		productcompinInfo productcompin = new productcompinInfo();
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM productcompinlog WHERE pno='"+pno+"';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		
		rs.next();
		productcompin.setPno(Integer.parseInt(rs.getString("pno")));
		productcompin.setPname(rs.getString("pname"));
		productcompin.setInsize(Integer.parseInt(rs.getString("insize")));
		productcompin.setIndate(rs.getString("indate"));
		productcompin.setSno(Integer.parseInt(rs.getString("sno")));
		
		rs.close();
		st.close();
		conn.close();
		return productcompin;
	}
	public void update(int pno, String pname, int insize, String indate, int sno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		String query1 = "UPDATE productcompinlog SET pname='"+pname+"', insize='"+insize+"',indate='"+indate+"',sno='"+sno+"' WHERE pno='"+pno+"'";
		
		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
}
