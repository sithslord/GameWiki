package com.sosks1313.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;
import com.sosks1313.dto.BDto;

public class BViewMenuCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bdTitle = request.getParameter("bdTitle");
		String bdId = request.getParameter("bdId");
		
		bDao dao = new bDao();
		
		ArrayList<BDto> dtos = dao.viewMenu(bdTitle);

		request.setAttribute("menu", dtos);
		request.setAttribute("bdTitle", bdTitle);
		request.setAttribute("bdId", bdId);
		

	}

}
