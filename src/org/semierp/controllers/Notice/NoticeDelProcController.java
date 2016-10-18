package org.semierp.controllers.Notice;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.controllers.Controller;
import org.semierp.dao.NoticeDao;

public class NoticeDelProcController implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException{
		String seq = request.getParameter("c");
		
		NoticeDao nDao = new NoticeDao();
		nDao.delete(seq);

		return "redirect:notice.jsp";
	}
}
