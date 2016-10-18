package org.semierp.controllers.Humen.Department;

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
import org.semierp.vo.departmentInfo;

public class DepartmentUpdateController implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {

		departmentDao department = new departmentDao();

		int deno = Integer.parseInt(request.getParameter("deno"));
		String dename = request.getParameter("dename");
		String detel1 = request.getParameter("detel1");
		String detel2 = request.getParameter("detel2");
		if (request.getParameter("emno").equals("-1")) {
			department.update(deno, dename, detel1, detel2);
		} else {
			int emno = Integer.parseInt(request.getParameter("emno"));
			department.update(deno, dename, detel1, detel2, emno);
		}

		return "redirect:DepartmentUpdate.htm";
	}
}
