package org.semierp.controllers.Humen.Paywage;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.controllers.Controller;
import org.semierp.vo.departmentInfo;
import org.semierp.vo.humenInfo;

public class PaywageCreateWageController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.KOREA);
		Date currentTime = new Date();
		String dTime = formatter.format(currentTime);
		String[] dates = dTime.split(" ");
		String[] days = dates[0].split("-");
		int mpmonth = Integer.parseInt(days[1]);
		String mpdate = dates[0];
		
		request.setAttribute("mpmonth", mpmonth);
		request.setAttribute("mpdate", mpdate);
		
		return "PaywageCreateWage.jsp";
	}
}



