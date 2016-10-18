package org.semierp.controllers.Humen.Paywage;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.controllers.Controller;
import org.semierp.dao.monthpayDao;
import org.semierp.vo.departmentInfo;
import org.semierp.vo.monthpayInfo;
import org.semierp.vo.paywageInfo;
import org.semierp.vo.paywageemployeepositionInfo;

public class PaywageEmployeePositionController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		String[] emposition = { "비정규직", "사원", "대리", "과장", "차장", "부장", "부사장", "사장", "마스터" };
		
		monthpayDao mDao = new monthpayDao();
		monthpayInfo monthpay = mDao.select();
		
		List<paywageemployeepositionInfo> paywages = new ArrayList<paywageemployeepositionInfo>();
		
		for(int i=0; i<emposition.length;i++){
			paywageemployeepositionInfo paywage = new paywageemployeepositionInfo();
			paywage.setEmposition(emposition[i]);
			paywage.setMpdate(monthpay.getMpdate());
			paywage.setMpamount(Integer.toString(monthpay.getMpamount()));
			paywage.setMpstepbonus(Integer.toString(monthpay.getMpstepbonus()*(i+1)));
			paywage.setTotalamount(Integer.toString(monthpay.getMpamount()+monthpay.getMpstepbonus()*(i+1)));
			paywages.add(paywage);
		}
		
		
		request.setAttribute("paywages", paywages);
		
		return "PaywageEmployeePosition.jsp";
	}
}



