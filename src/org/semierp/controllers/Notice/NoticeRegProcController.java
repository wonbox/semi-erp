package org.semierp.controllers.Notice;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.controllers.Controller;
import org.semierp.dao.NoticeDao;

public class NoticeRegProcController implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException{
	//	request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		NoticeDao nDao = new NoticeDao();
		nDao.insert(title, content);
		
		return "/WEB-INF/view/notice/notice.jsp";
	}
}
