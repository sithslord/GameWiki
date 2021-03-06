package com.sosks1313.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;
import com.sosks1313.dto.BDto;

public class BContentCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bId = request.getParameter("bId");
		String bdTitle = request.getParameter("bdTitle");
		
		bDao dao = new bDao();
		BDto dto = dao.contentView(bId, bdTitle);
		
		request.setAttribute("content_view", dto);
		request.setAttribute("bdTitle", bdTitle);
		
	}

}
