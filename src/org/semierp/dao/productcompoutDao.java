package org.semierp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.semierp.vo.productcompoutInfo;
import org.semierp.vo.productupfo;

public class productcompoutDao {
   public void insert(int pno, String pname, int outsize, String outdate) throws ClassNotFoundException, SQLException{
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");

      String query1 = "INSERT INTO productcompoutlog VALUES("+pno+",'"+pname+"',"+outsize+",'"+outdate+"');";

      Statement st = conn.createStatement();
      st.execute(query1);
      
      st.close();
      conn.close();
   }
   
public void insert(int pno, String pname, int pnum, String sth , int price) throws ClassNotFoundException, SQLException{
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");

         String query1 = "INSERT INTO product VALUES("+pno+",'"+pname+"',"+pnum+",'"+sth+"','"+price+"');";

         Statement st = conn.createStatement();
         st.execute(query1);
         
         st.close();
         conn.close();
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
   public void delete(int pno) throws ClassNotFoundException, SQLException{
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
   
      String query1 = "DELETE FROM productcompoutlog WHERE pno="+pno+";";

      Statement st = conn.createStatement();
      st.execute(query1);
      
      st.close();
      conn.close();
   }
   public productcompoutInfo select(int pno) throws ClassNotFoundException, SQLException{
      productcompoutInfo productcompout = new productcompoutInfo();
      
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

      String query1 = "SELECT * FROM productcompoutlog WHERE pno='"+pno+"';";

      Statement st = conn.createStatement();
      ResultSet rs = st.executeQuery(query1);
      
      rs.next();
      productcompout.setPno(Integer.parseInt(rs.getString("pno")));
      productcompout.setPname(rs.getString("pname"));
      productcompout.setOutsize(Integer.parseInt(rs.getString("outsize")));
      productcompout.setOutdate(rs.getString("outdate"));
      
      rs.close();
      st.close();
      conn.close();
      return productcompout;
   }
   public void update(int pno, String pname, int outsize, String outdate) throws ClassNotFoundException, SQLException{
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
      
      String query1 = "UPDATE productcompoutlog SET pname='"+pname+"', outsize='"+outsize+"',outdate='"+outdate+"' WHERE pno='"+pno+"'";
      
      Statement st = conn.createStatement();
      st.execute(query1);
      
      st.close();
      conn.close();
   }
   public void update(int pno, int price) throws ClassNotFoundException, SQLException{
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test","test1","abcd1234");
      
      int upprice =  select(pno, "H").getPnum();
      upprice = price;
      
      String query1 = "UPDATE product SET price='"+upprice+"' WHERE pno='"+pno+"'";
      
      Statement st = conn.createStatement();
      st.execute(query1);
      
      st.close();
      conn.close();
   }
}