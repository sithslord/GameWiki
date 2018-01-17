package com.sosks1313.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;
import com.sosks1313.dto.BDto;

public class BViewFreeBoardCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
		request.setCharacterEncoding("EUC-KR");

		String bdTitle = request.getParameter("bdTitle");
		
		System.out.println("bdTitle at command: " + bdTitle);
		bDao dao = new bDao();
		
		ArrayList<BDto> dtos = dao.viewfreeboard(bdTitle);
		
		request.setAttribute("bdlist", dtos);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}