package com.sosks1313.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;

public class BDeleteMenuCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bdTitle = request.getParameter("bdTitle");
		String[] menus = request.getParameterValues("menu");
		
		bDao dao = new bDao(); 

		
		for(int i = 0; i < menus.length ; i++) {
			
			dao.menuDelete(bdTitle, menus[i]);
		}
		
	}

}
