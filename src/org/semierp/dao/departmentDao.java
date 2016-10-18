package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.departmentInfo;

public class departmentDao {
	public void delete(int deno)throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "DELETE FROM department WHERE deno='"+deno+"';";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public departmentInfo select (int deno)throws ClassNotFoundException, SQLException{
		departmentInfo department = new departmentInfo();
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "SELECT * FROM department WHERE deno='"+deno+"';";

		Statement st = conn.createStatement();
		ResultSet rs =  st.executeQuery(query1);
		rs.next();
		
		department.setDeno(Integer.parseInt(rs.getString("deno")));
		department.setDename(rs.getString("dename"));
		department.setDetel1(rs.getString("detel1"));
		department.setDetel2(rs.getString("detel2"));
		if(rs.getString("emno")==null){
			department.setEmno(-1);
		}else{
			department.setEmno(Integer.parseInt(rs.getString("emno")));
		}
		rs.close();
		st.close();
		conn.close();
		return department;
	}
	public void update(int deno, String dename, String detel1, String detel2, int emno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "UPDATE department SET dename='"+dename+"', detel1='"+detel1+"', detel2='"+detel2+"', emno='"+emno+"' WHERE deno='"+deno+"';";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public void update(int deno, String dename, String detel1, String detel2) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "UPDATE department SET dename='"+dename+"', detel1='"+detel1+"', detel2='"+detel2+"' WHERE deno='"+deno+"';";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public void insert(int deno, String dename, String detel1, String detel2, int emno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "INSERT INTO department VALUES("+deno+",'"+dename+"','"+detel1+"','"+detel2+"',"+emno+");";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public void insert(int deno, String dename, String detel1, String detel2) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "INSERT INTO department(deno,dename,detel1,detel2) VALUES("+deno+",'"+dename+"','"+detel1+"','"+detel2+"');";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
}
