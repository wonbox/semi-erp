package org.semierp.controllers.Humen.Paywage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.controllers.Controller;
import org.semierp.dao.departmentDao;
import org.semierp.dao.employeeDao;
import org.semierp.dao.mplistDao;
import org.semierp.vo.departmentInfo;

public class PaywageInsertProcController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{

		int mpyear = Integer.parseInt(request.getParameter("mpyear"));
		int mpmonth = Integer.parseInt(request.getParameter("mpmonth"));

		List<String> errors = new ArrayList<String>();
		List<Integer> emno = new ArrayList<Integer>();
		List<String> emposition = new ArrayList<String>();

		int mpno = Integer.parseInt(request.getParameter("mpno"));
		int mpstepbonux = Integer.parseInt(request.getParameter("mpstepbonus"));
		int mpamount = Integer.parseInt(request.getParameter("mpamount"));

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://mind.iptime.org:43306/test", "test1", "abcd1234");

		String query1 = "SELECT e.emno, e.emname, e.emposition, e.emdiv, mp.mpno, m.mpstepbonus, m.mpamount";
		query1 += " FROM monthpay m, employee e, mplist mp";
		query1 += " WHERE YEAR(mpdate)=" + mpyear + " and MONTH(mpdate) <> " + mpmonth + " and m.mpno = mp.mpno and e.emno = mp.emno;";

		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(query1);
		int j = 0;

		if (request.getParameterValues("emno") != null) {
			String[] emnos = request.getParameterValues("emno");
			for (int i = 0; i < emnos.length; i++) {
				emno.add(Integer.parseInt(emnos[i]));
			}
		}

		while (rs.next()) {
			if(emno.get(j)==Integer.parseInt(rs.getString("e.emno"))){
				emposition.add(rs.getString("e.emposition"));
				j++;
			}
		}
		
		mplistDao mplist = new mplistDao();
		for (int i = 0; i < emno.size(); i++) {
			if (emposition.get(i).equals("비정규직")) {
				mplist.insert(emno.get(i), mpno, mpamount + (mpstepbonux * 1));
			} else if (emposition.get(i).equals("사원")) {
				mplist.insert(emno.get(i), mpno, mpamount + (mpstepbonux * 2));
			} else if (emposition.get(i).equals("대리")) {
				mplist.insert(emno.get(i), mpno, mpamount + (mpstepbonux * 3));
			} else if (emposition.get(i).equals("과장")) {
				mplist.insert(emno.get(i), mpno, mpamount + (mpstepbonux * 4));
			} else if (emposition.get(i).equals("차장")) {
				mplist.insert(emno.get(i), mpno, mpamount + (mpstepbonux * 5));
			} else if (emposition.get(i).equals("부장")) {
				mplist.insert(emno.get(i), mpno, mpamount + (mpstepbonux * 6));
			} else if (emposition.get(i).equals("부사장")) {
				mplist.insert(emno.get(i), mpno, mpamount + (mpstepbonux * 7));
			} else if (emposition.get(i).equals("사장")) {
				mplist.insert(emno.get(i), mpno, mpamount + (mpstepbonux * 8));
			} else if (emposition.get(i).equals("마스터")) {
				mplist.insert(emno.get(i), mpno, mpamount + (mpstepbonux * 9));
			}
		}
		return "redirect:Paywage.htm";
	}
}



