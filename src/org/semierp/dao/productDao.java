package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.productInfo;
import org.semierp.vo.productcomponentInfo;

public class productDao {
	public void insert(int pno, String pname, int pnum, String pdiv, int price) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "INSERT INTO product VALUES(" + pno + ",'" + pname + "'," + pnum + ",'" + pdiv + "'," + price + ");";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public boolean update(String pno, int pnum) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");
		boolean returnStatement = true;
		Statement st = conn.createStatement();

		productcomponentInfo productcomponent = new productcomponentInfo();
		productcomponentDao productdada = new productcomponentDao();
		productcomponent = productdada.select(Integer.parseInt(pno)); // pno에
																		// 맞춰서
																		// 구성품
																		// 자료를
																		// 가져온다.

		if (productcomponent.getP1no() != 0) { // 구성품이 존재한다면
			int decrease = (productcomponent.getP1num()) * pnum; // 총 빼야 할 갯수를
																	// 구함
			int subpnum = select(productcomponent.getP1no()).getPnum(); // 1번
																		// 구성품이
																		// 현재
																		// 몇개가
																		// 잇는지
																		// 확인.
			if (subpnum < decrease) {
				returnStatement = false;
			} else {
				subpnum = subpnum - decrease; // pnum만큼 뺀다.
				String query1 = "UPDATE product SET pnum='" + subpnum + "' WHERE pno='" + productcomponent.getP1no() + "'";// 디비에
																															// 삽입

				st = conn.createStatement();
				st.execute(query1);
			}
		}
		if (productcomponent.getP2no() != 0) {
			int decrease = (productcomponent.getP2num()) * pnum;
			int subpnum = select(productcomponent.getP2no()).getPnum();
			if (subpnum < decrease) {
				returnStatement = false;
			} else {
				subpnum -= decrease; // pnum만큼 뺀다.
				String query1 = "UPDATE product SET pnum='" + subpnum + "' WHERE pno='" + productcomponent.getP2no() + "'";// 디비에
																															// 삽입

				st = conn.createStatement();
				st.execute(query1);
			}
		}
		if (productcomponent.getP3no() != 0) {
			int decrease = (productcomponent.getP3num()) * pnum;
			int subpnum = select(productcomponent.getP3no()).getPnum();
			if (subpnum < decrease) {
				returnStatement = false;
			} else {
				subpnum -= decrease; // pnum만큼 뺀다.
				String query1 = "UPDATE product SET pnum='" + subpnum + "' WHERE pno='" + productcomponent.getP3no() + "'";// 디비에
																															// 삽입

				st = conn.createStatement();
				st.execute(query1);
			}
		}
		if (productcomponent.getP4no() != 0) {
			int decrease = (productcomponent.getP4num()) * pnum;
			int subpnum = select(productcomponent.getP4no()).getPnum();
			if (subpnum < decrease) {
				returnStatement = false;
			} else {
				subpnum -= decrease; // pnum만큼 뺀다.
				String query1 = "UPDATE product SET pnum='" + subpnum + "' WHERE pno='" + productcomponent.getP4no() + "'";// 디비에
																															// 삽입

				st = conn.createStatement();
				st.execute(query1);
			}
		}

		st.close();
		conn.close();
		return returnStatement;
	}

	public void delete(int pno) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "DELETE FROM product WHERE pno=" + pno + ";";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public productInfo select(int pno) throws ClassNotFoundException, SQLException {
		productInfo product = new productInfo();

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM product WHERE pno='" + pno + "';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);

		rs.next();
		product.setPno(Integer.parseInt(rs.getString("pno")));
		product.setPname(rs.getString("pname"));
		product.setPnum(Integer.parseInt(rs.getString("pnum")));
		product.setPdiv(rs.getString("pdiv"));
		product.setPrice(Integer.parseInt(rs.getString("price")));

		return product;
	}

	public productInfo select(int pno, String pdiv) throws ClassNotFoundException, SQLException {
		productInfo product = new productInfo();

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT * FROM product WHERE pdiv='" + pdiv + "' and pno='" + pno + "';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);

		rs.next();
		product.setPno(Integer.parseInt(rs.getString("pno")));
		product.setPname(rs.getString("pname"));
		product.setPnum(Integer.parseInt(rs.getString("pnum")));
		product.setPdiv(rs.getString("pdiv"));
		product.setPrice(Integer.parseInt(rs.getString("price")));

		return product;
	}

	public void update(int pno, String pname, int pnum, String pdiv, int price) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "UPDATE product SET pname='" + pname + "', pnum='" + pnum + "',pdiv='" + pdiv + "',price='" + price + "' WHERE pno='" + pno
				+ "'";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void update(int pno, int price) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "UPDATE product SET price='" + price + "' WHERE pno='" + pno + "'";

		Statement st = conn.createStatement();
		st.execute(query1);

		st.close();
		conn.close();
	}

	public void updateProductionIn(int pno, int pnum) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT pnum FROM product WHERE pno='" + pno + "';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);

		rs.next();
		int originPnum = Integer.parseInt(rs.getString("pnum"));
		originPnum = originPnum + pnum;

		query1 = "UPDATE product SET pnum=" + originPnum + " WHERE pno='" + pno + "';";
		st = conn.createStatement();
		st.execute(query1);

		rs.close();
		st.close();
		conn.close();
	}

	public void updateProductionOut(int pno, int pnum) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT pnum FROM product WHERE pno='" + pno + "';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);

		rs.next();
		int originPnum = Integer.parseInt(rs.getString("pnum"));
		originPnum = originPnum - pnum;

		query1 = "UPDATE product SET pnum=" + originPnum + " WHERE pno='" + pno + "';";
		st = conn.createStatement();
		st.execute(query1);

		rs.close();
		st.close();
		conn.close();
	}

	public void updateComponentIn(int pno, int pnum) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT pnum FROM product WHERE pno='" + pno + "';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);

		rs.next();
		int originPnum = Integer.parseInt(rs.getString("pnum"));
		originPnum = originPnum + pnum;

		query1 = "UPDATE product SET pnum=" + originPnum + " WHERE pno='" + pno + "';";
		st = conn.createStatement();
		st.execute(query1);

		rs.close();
		st.close();
		conn.close();
	}

	public void updateComponentOut(int pno, int pnum) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT pnum FROM product WHERE pno='" + pno + "';";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);

		rs.next();
		int originPnum = Integer.parseInt(rs.getString("pnum"));
		originPnum = originPnum - pnum;

		query1 = "UPDATE product SET pnum=" + originPnum + " WHERE pno='" + pno + "';";
		st = conn.createStatement();
		st.execute(query1);

		rs.close();
		st.close();
		conn.close();
	}
}
