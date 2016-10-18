package org.semierp.controllers.Notice;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.semierp.controllers.Controller;
import org.semierp.dao.NoticeDao;

public class NoticeEditProcController implements Controller {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		String seq = request.getParameter("c");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		NoticeDao nDao = new NoticeDao();
		
		boolean err_ch = nDao.update(seq, title, content);
		
		
		if(!err_ch){
			return "redirect:noticeDetail.htm?c="+seq;
		}
		else{
			return "redirect:error.jsp";
		}
	}
}
