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

public class HumenDeadPeopleProcController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		
		List<String> errors = new ArrayList<String>();
		List<Integer> emno = new ArrayList<Integer>();
		
		if (request.getParameterValues("emno") != null) {
			String[] emnos = request.getParameterValues("emno");
			for(int i = 0; i<emnos.length;i++){
				emno.add(Integer.parseInt(emnos[i]));
			}
		}
		
		employeeDao employee = new employeeDao();
		
		for(int i = 0; i<emno.size();i++){
			employee.updateDeadPeople(emno.get(i));
		}
		
		return "redirect:Humen.htm";
	}
}



