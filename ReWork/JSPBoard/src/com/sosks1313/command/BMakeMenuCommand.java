package com.sosks1313.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;

public class BMakeMenuCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String bdTitle = request.getParameter("bdTitle");
		String menuL = request.getParameter("menuL");
		
		bDao dao = new bDao(); 
		
		dao.makeMenu(bdTitle, menuL);
	}

}
