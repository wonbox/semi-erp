package org.semierp.dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.vo.Notice;

import java.sql.*;

public class NoticeDao {
	public boolean update(String seq, String title, String content) throws ClassNotFoundException, SQLException{
		
		String query1 = "UPDATE testJsp SET title='"+title+"', content='"+content+"' WHERE seq="+seq;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		Statement st = conn.createStatement();
		boolean err_ch = st.execute(query1);
		
	
		st.close();
		conn.close();
		
		return err_ch;
	}
	
	public int delete(String seq) throws ClassNotFoundException, SQLException{
		String query1 = "DELETE FROM testJsp WHERE seq="+seq;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
		
		return 0;
	}
	public int insert(String title, String content) throws ClassNotFoundException, SQLException{
		
		//title = new String(title.getBytes("ISO-8859-1"),"UTF-8");
		//content = new String(content.getBytes("ISO-8859-1"),"UTF-8");
		
		String query1 = "INSERT INTO testJsp(TITLE, CONTENT, WRITER, REGDATE, HIT) VALUES( '"+title +"', '"+ content+"', '정민성', current_timestamp, 0);";
		
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
	public Notice execute(String seq) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		
		String query1 = "SELECT * FROM testJsp WHERE seq ="+seq;
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		Statement st = conn.createStatement();
		
		ResultSet rs = st.executeQuery(query1);
		rs.next();
		
		Notice n = new Notice();
		
		n.setContent(rs.getString("content"));
		n.setHit(rs.getString("hit"));
		n.setRegdate(rs.getString("regdate"));
		n.setSeq(rs.getString("seq"));
		n.setTitle(rs.getString("title"));
		n.setWriter(rs.getString("writer"));
		
		rs.close();
		st.close();
		conn.close();	

		return n;
	}
}
