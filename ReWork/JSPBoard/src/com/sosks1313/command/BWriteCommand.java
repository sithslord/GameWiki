package com.sosks1313.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.dao.bDao;
import com.sosks1313.dto.BDto;

public class BWriteCommand implements BCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bdTitle = request.getParameter("bdTitle");
		String bName = request.getParameter("bName"); //write_view ���ۼ����� �ۼ��� input���� �����´�
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		bDao dao = new bDao(); //bDao ��ü ����

		
		dao.write(bdTitle, bName, bTitle, bContent); //bDao�� write�޼ҵ� �ǻ�
		
	}

}
