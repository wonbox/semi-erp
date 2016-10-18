package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.employeeInfo;

public class employeeDao {
	public void join(int emno,String id, String pw) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "INSERT INTO programuser VALUES('"+id+"','"+pw+"',"+emno+");";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	
	public void insert(int emno,int deno,String emname,String emaddress,String emtel,String emposition,String emjoindate, String emdiv) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "INSERT INTO employee VALUES("+emno+","+deno+",'"+emname+"','"+emaddress+"','"+emtel+"','"+emposition+"','"+emjoindate+"','"+emdiv+"');";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public void delete(int emno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "DELETE FROM employee WHERE emno='"+emno+"';";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public employeeInfo select(int emno) throws ClassNotFoundException, SQLException{
		employeeInfo employee = new employeeInfo();
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "SELECT * FROM employee WHERE emno = '"+emno+"';";
		
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		rs.next();
		
		employee.setEmno(Integer.parseInt(rs.getString("emno")));
		employee.setDeno(Integer.parseInt(rs.getString("deno")));
		employee.setEmname(rs.getString("emname"));
		employee.setEmaddress(rs.getString("emaddress"));
		employee.setEmtel(rs.getString("emtel"));
		employee.setEmposition(rs.getString("emposition"));
		employee.setEmjoindate(rs.getString("emjoindate"));
		employee.setEmdiv(rs.getString("emdiv"));

		rs.close();
		rs.close();
		st.close();
		return employee;		
	}
	public int selectDeno(String dename) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "SELECT deno FROM department WHERE dename='"+dename+"';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		rs.next();
		
		int deno = Integer.parseInt(rs.getString("deno"));
		
		rs.close();
		rs.close();
		st.close();
		return deno;
	}
	public String selectDename(int deno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		String query1 = "SELECT dename FROM department WHERE deno='"+deno+"';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		rs.next();
		
		String dename = rs.getString("dename");

		rs.close();
		rs.close();
		st.close();
		return dename;
	}
	
	public void update(int emno,int deno,String emname,String emaddress,String emtel,String emposition,String emjoindate) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "UPDATE employee SET deno='"+deno+"',emname='"+emname+"',emaddress='"+emaddress+"',emtel='"+emtel+"',emposition='"+emposition+"',emjoindate='"+emjoindate+"' WHERE emno='"+emno+"';";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	
	public void updateDeadPeople(int emno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "UPDATE employee SET emdiv='퇴사' WHERE emno='"+emno+"';";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
	public void updatePowerUp(int emno) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
	
		String query1 = "UPDATE employee SET emdiv='정규직' WHERE emno='"+emno+"';";

		Statement st = conn.createStatement();
		st.execute(query1);
		
		st.close();
		conn.close();
	}
}
