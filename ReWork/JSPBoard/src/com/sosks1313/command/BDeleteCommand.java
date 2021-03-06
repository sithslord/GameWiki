package com.sosks1313.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.sosks1313.dao.bDao;

public class BDeleteCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bId = request.getParameter("bId");
		String bdTitle = request.getParameter("bdTitle");
		
		System.out.println("deletecommand bid: " + bId);
		
		bDao dao = new bDao();
		
		dao.delete(bId, bdTitle);
		
		request.setAttribute("bdTitle", bdTitle);
	}

}
