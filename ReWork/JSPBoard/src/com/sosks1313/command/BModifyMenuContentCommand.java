package com.sosks1313.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;
import com.sosks1313.dto.BDto;

public class BModifyMenuContentCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String bdTitle = request.getParameter("bdTitle");
		String menuTitle = request.getParameter("menuTitle");
		
		bDao dao = new bDao();
		BDto dto = dao.modifyMenuContent(bdTitle, menuTitle);
		
		request.setAttribute("modifyMenuContent", dto);
		request.setAttribute("bdTitle", bdTitle);
		request.setAttribute("menuTitle", menuTitle);
		
		
	}

}
