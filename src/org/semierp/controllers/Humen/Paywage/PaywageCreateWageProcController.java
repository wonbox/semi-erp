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
import org.semierp.dao.monthpayDao;
import org.semierp.vo.departmentInfo;

public class PaywageCreateWageProcController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		
		List<String> errors = new ArrayList<String>();
		
		int mpmonth = Integer.parseInt(request.getParameter("mpmonth"));
		int mpamount = Integer.parseInt(request.getParameter("mpamount"));
		int mpstepbonus = Integer.parseInt(request.getParameter("mpstepbonus"));
		String mpdate = request.getParameter("mpdate");
		
		monthpayDao monthpay = new monthpayDao();
		monthpay.insert(mpmonth, mpamount, mpstepbonus, mpdate);
		
	
		return "redirect:Paywage.htm";
	}
}



