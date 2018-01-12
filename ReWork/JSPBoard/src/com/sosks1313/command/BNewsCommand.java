package com.sosks1313.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;
import com.sosks1313.dto.BDto;

public class BNewsCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		bDao dao = new bDao(); 
		ArrayList<BDto> dtos = dao.news(); 
		
		request.setAttribute("news", dtos); 
		
	}

}
