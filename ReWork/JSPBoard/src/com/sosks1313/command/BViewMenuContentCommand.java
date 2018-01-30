package com.sosks1313.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;
import com.sosks1313.dto.BDto;

public class BViewMenuContentCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bdTitle = request.getParameter("bdTitle");
		String bdId = request.getParameter("bdId");
		String menuTitle = request.getParameter("menuTitle");
		
		bDao dao = new bDao(); 
		BDto dto = dao.viewMenuContent(bdTitle, menuTitle);
		
		request.setAttribute("menuContent_view", dto);
		request.setAttribute("bdTitle", bdTitle);
		request.setAttribute("menuTitle", menuTitle);
		
		
	}

}
