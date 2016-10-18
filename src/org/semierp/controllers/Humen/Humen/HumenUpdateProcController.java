package org.semierp.controllers.Humen.Humen;

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
import org.semierp.vo.departmentInfo;

public class HumenUpdateProcController implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {

		employeeDao employee = new employeeDao();	

		int emno = Integer.parseInt(request.getParameter("emno"));
		int deno = employee.selectDeno(request.getParameter("dename"));
		String emname = request.getParameter("emname");
		String emaddress = request.getParameter("emaddress");
		String emtel = request.getParameter("emtel");
		String emposition = request.getParameter("emposition");
		String emjoindate = request.getParameter("emjoindate");
		String emdiv = request.getParameter("emdiv");
		
		employee.update(emno, deno, emname, emaddress, emtel, emposition, emjoindate);
		
		return "redirect:../Humen.htm";
	}
}
