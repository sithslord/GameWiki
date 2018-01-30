package com.sosks1313.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;

public class BModifyMenuContentComplete implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bdTitle = request.getParameter("bdTitle");
		String menuTitle = request.getParameter("menuTitle");
		String menuContent = request.getParameter("content");
		
		bDao dao = new bDao();
		
		dao.modifyMenuContentComplete(bdTitle, menuTitle, menuContent);
				
	}

}
