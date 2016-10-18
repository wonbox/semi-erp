package org.semierp.controllers.Humen.Department;

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
import org.semierp.vo.departmentInfo;

public class DepartmentInsertController implements Controller{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		
		return "DepartmentInsert.jsp";
	}
}



