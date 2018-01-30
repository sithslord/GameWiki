package com.sosks1313.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BDeleteBoardConfirm implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bdTitle = request.getParameter("bdTitle");
		String bdId = request.getParameter("bdId");
		
		request.setAttribute("bdTitle", bdTitle);
		request.setAttribute("bdId", bdId);

		
	}

}
