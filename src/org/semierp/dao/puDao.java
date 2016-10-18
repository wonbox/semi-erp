package org.semierp.dao;

import java.sql.*;

import org.semierp.vo.puInfo;

public class puDao {
	public puInfo select(String id, String pw) throws ClassNotFoundException, SQLException{
		puInfo programuser = new puInfo();
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
		
		String query1 = "SELECT emno FROM programuser WHERE id = '" + id + "' and pw = '" + pw + "';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		if(rs.next()){
			programuser.setId(id);
			programuser.setPw(pw);
			programuser.setEmno(rs.getString("emno"));
		}
		else{
			programuser = null;
		}
		
		rs.close();
		st.close();
		conn.close();
		
		return programuser;
	}
}
