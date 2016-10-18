package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.productInfo;
import org.semierp.vo.productupfo;
import org.semierp.vo.productcompinInfo;

public class productuoDao0 {
   public void insert(int pno, String pname, int insize, String indate, int sno) throws ClassNotFoundException, SQLException{
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");

      String query1 = "INSERT INTO productcompinlog VALUES("+pno+",'"+pname+"',"+insize+",'"+indate+"',"+sno+");";

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
   public productupfo select(int pno, String pdiv) throws ClassNotFoundException, SQLException{
      productupfo product = new productupfo();
      
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

      String query1 = "SELECT * FROM product WHERE pdiv='"+pdiv+"' and pno='"+pno+"';";

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
   public void update(int pno, String pname, int insize, String indate, int sno) throws ClassNotFoundException, SQLException{
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
      
      String query1 = "UPDATE product SET pname='"+pname+"', insize='"+insize+"',indate='"+indate+"',sno='"+sno+"' WHERE pno='"+pno+"'";
      
      Statement st = conn.createStatement();
      st.execute(query1);
      
      st.close();
      conn.close();
   }
   public void update(int pno, int pnum) throws ClassNotFoundException, SQLException{
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
      
   
      int uppnum =  select(pno, "H").getPnum();
      uppnum-=pnum;
            
      String query1 = "UPDATE product SET pnum='"+uppnum+"' WHERE pno='"+pno+"'";
      
      Statement st = conn.createStatement();
      st.execute(query1);
      
      st.close();
      conn.close();
   }
}