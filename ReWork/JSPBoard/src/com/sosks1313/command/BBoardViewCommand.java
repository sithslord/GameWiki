package com.sosks1313.command;

import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;
import com.sosks1313.dto.BDto;

public class BBoardViewCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			
			String bdId = request.getParameter("bdId");
			bDao dao = new bDao();
			BDto dto = dao.boardView(bdId);
			
			request.setAttribute("board_view", dto);

	}

}
