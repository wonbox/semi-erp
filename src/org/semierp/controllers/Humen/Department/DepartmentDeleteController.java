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

public class DepartmentDeleteController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		
		List<Integer> deno = new ArrayList<Integer>();
		
		if (request.getParameterValues("deno") != null) {
			String[] denos = request.getParameterValues("deno");
			for(int i = 0; i<denos.length;i++){
				deno.add(Integer.parseInt(denos[i]));
			}
		}
		departmentDao department = new departmentDao();
		
		for(int i = 0; i<deno.size();i++){
			department.delete(deno.get(i));
		}
		return "redirect:Department.htm";
	}
}



