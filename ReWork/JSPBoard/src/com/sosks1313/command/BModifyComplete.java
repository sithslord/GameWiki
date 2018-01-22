package com.sosks1313.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;

public class BModifyComplete implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String bId = request.getParameter("bId");
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		String bdTitle = request.getParameter("bdTitle");
		
		bDao dao = new bDao();
		
		dao.modifyComplete(bId, bName, bTitle, bContent, bdTitle);
		
		
	}

}
