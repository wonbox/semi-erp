package org.semierp.controllers.Humen.Department;

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
import org.semierp.vo.departmentInfo;

public class DepartmentUpdateContentController implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {
		departmentDao dDao = new departmentDao();
		departmentInfo dInfo = dDao.select(Integer.parseInt(request.getParameter("deno")));

		departmentInfo department = new departmentInfo();

		department.setDename(dInfo.getDename());
		department.setDeno(dInfo.getDeno());
		department.setDetel1(dInfo.getDetel1());
		department.setDetel2(dInfo.getDetel2());
		department.setEmno(dInfo.getEmno());

		

		request.setAttribute("department", department);

		return "DepartmentUpdateContent.jsp";
	}
}
