package org.semierp.controllers.Humen.Humen;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.controllers.Controller;
import org.semierp.dao.departmentDao;
import org.semierp.dao.employeeDao;
import org.semierp.vo.departmentInfo;
import org.semierp.vo.employeeInfo;
import org.semierp.vo.humenInfo;

public class HumenUpdateContentController implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {
		employeeDao eDao = new employeeDao();
		employeeInfo eInfo = eDao.select(Integer.parseInt(request.getParameter("emno")));
		String dename = eDao.selectDename(eInfo.getDeno());

		humenInfo humen = new humenInfo();
		humen.setEmdiv(eInfo.getEmdiv());
		humen.setEmno(Integer.toString(eInfo.getEmno()));
		humen.setDename(dename);
		humen.setEmname(eInfo.getEmname());
		humen.setEmaddress(eInfo.getEmaddress());
		humen.setEmtel(eInfo.getEmtel());
		humen.setEmposition(eInfo.getEmposition());
		humen.setEmjoindate(eInfo.getEmjoindate());

		

		request.setAttribute("humen", humen);

		return "HumenUpdateContent.jsp";
	}
}
