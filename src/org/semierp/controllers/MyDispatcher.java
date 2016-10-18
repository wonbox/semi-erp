package org.semierp.controllers;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.controllers.Humen.HumenController;

public class MyDispatcher extends HttpServlet {

	private List<String> urls = new ArrayList<String>();
	private List<Controller> controllers = new ArrayList<Controller>();

	@Override
	public void init(ServletConfig config) throws ServletException{
		// TODO Auto-generated method stub
		super.init(config);
		
		int errorClassLine = 0;
		String path = config.getInitParameter("path");
		
		FileInputStream fis;
		try {
			fis = new FileInputStream(path);
			Scanner in = new Scanner(fis);
			while (in.hasNext()) {
				errorClassLine++;
				String[] maps = in.nextLine().split(" ");
				urls.add(maps[0]);
				Controller ctrl;
				try {
					ctrl = (Controller) Class.forName(maps[1]).newInstance();
					controllers.add(ctrl);
				} catch (InstantiationException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (IllegalAccessException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (ClassNotFoundException e1) {
					// TODO Auto-generated catch block
					System.out.println(errorClassLine);
					e1.printStackTrace();
				}
			}
			in.close();
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			String requestUri = request.getRequestURI();
			Controller controller = null;

			for (int i = 0; i < urls.size(); i++) {
				if (requestUri.equals(urls.get(i))) {
					controller = controllers.get(i);
					break;
				}
			}
			if (controller == null) {
				controller = new ErrorController();
			}

			String urlView = controller.execute(request, response);
			
			String[] temp = urlView.split(":");
			if(temp[0].equals("redirect")){
				response.sendRedirect(temp[1]);	//단지 화면전환
			}
			else{
				request.getRequestDispatcher(temp[0]).forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doGet(request, response);
		service(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(request, response);
		service(request, response);
	}
}
