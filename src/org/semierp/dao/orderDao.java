package org.semierp.dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.vo.orderInfo;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public class orderDao {
	public boolean update(String ono, String otitle, String ocontent) throws ClassNotFoundException, SQLException{
		
		String query1 = "UPDATE orderlist SET otitle='"+otitle+"', ocontent='"+ocontent+"' WHERE ono="+ono;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		Statement st = conn.createStatement();
		boolean err_ch = st.execute(query1);
		
	
		st.close();
		conn.close();
		
		return err_ch;
	}
	
	public int delete(int ono) throws ClassNotFoundException, SQLException{
		String query1 = "DELETE FROM orderlist WHERE ono="+ono;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
		
		return 0;
	}
	public int insert(String otitle, String ocontent) throws ClassNotFoundException, SQLException{
		
		//title = new String(title.getBytes("ISO-8859-1"),"UTF-8");
		//content = new String(content.getBytes("ISO-8859-1"),"UTF-8");
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		String query1 = "INSERT INTO orderlist(OTITLE, OCONTENT, ORDERDATE) VALUES( '"+otitle +"', '"+ ocontent+"', '"+sdf.format(d)+"');";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
													   
		Statement st = conn.createStatement();
		
		st.execute(query1);
		/*
		PreparedStatement stmt = conn.prepareStatement(query1);
		stmt.setString(1, title);
		stmt.setString(2, content);
		
		stmt.executeUpdate();
		*/
		

		st.close();
		conn.close();
		
		return 0;
	}
	public orderInfo execute(String ono) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		
		String query1 = "SELECT * FROM orderlist WHERE ono ="+ono;
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		Statement st = conn.createStatement();
		
		ResultSet rs = st.executeQuery(query1);
		rs.next();
		
		orderInfo order = new orderInfo();
		
		order.setOcontent(rs.getString("ocontent"));
		order.setOtitle(rs.getString("otitle"));
		order.setOcontent(rs.getString("ocontent"));
		order.setOrderdate(rs.getString("orderdate"));
		
		
		rs.close();
		st.close();
		conn.close();	

		return order;
		
	}
}
