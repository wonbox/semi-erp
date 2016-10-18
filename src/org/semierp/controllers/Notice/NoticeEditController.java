package org.semierp.controllers.Notice;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.controllers.Controller;
import org.semierp.dao.NoticeDao;
import org.semierp.vo.Notice;

public class NoticeEditController implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException{
		String seq = request.getParameter("c");
		
		NoticeDao nDao = new NoticeDao();
		Notice n = nDao.execute(seq);
		
		request.setAttribute("n", n);
		return "/WEB-INF/view/notice/noticeEdit.jsp";
	}
}
