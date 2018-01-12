package com.sosks1313.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.command.BCommand;
import com.sosks1313.command.BContentCommand;
import com.sosks1313.command.BDeleteCommand;
import com.sosks1313.command.BListCommand;
import com.sosks1313.command.BModifyCommand;
import com.sosks1313.command.BModifyComplete;
import com.sosks1313.command.BWriteCommand;

/**
 * Servlet implementation class MainController
 */
@WebServlet("*.do")
//����
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String viewPage = null;
		BCommand command = null;
		
		String uri = request.getRequestURI(); //���� ��α����� �н��� ������
		System.out.println("URI: " + uri);
		
		String[] arrURI = uri.split("/"); //uri�� ��ο��� / ���� ������ �迭�� ����
		
		String comm = arrURI[arrURI.length-1]; //uri�� ������ ��θ� comm�� ����
		
		if(comm.equals("list.do")) { //list.do ��û��
			
			command = new BListCommand();
			command.execute(request, response); 
			
			viewPage = "list.jsp";
		}else if(comm.equals("write_view.do")){ //���ۼ� ���ý� ���ۼ� �������� �̵�
			
			viewPage="write_view.jsp";
			
		}else if(comm.equals("write.do")){ //���ۼ� ���������� �Է��� ��������
			
			command = new BWriteCommand();
			command.execute(request, response);
			
			viewPage = "list.do"; //������� ���ƿ´�
			
		}else if(comm.equals("content_view.do")) {
			command = new BContentCommand();
			command.execute(request, response);
			
			viewPage = "content_view.jsp";
			
		}else if(comm.equals("modify.do")){
			
			command = new BModifyCommand();
			command.execute(request, response);

			
			viewPage = "modify.jsp";
			
		}else if(comm.equals("modifyComplete.do")) {
			
			command = new BModifyComplete();
			command.execute(request, response);
			
			viewPage = "list.do";
		}else if(comm.equals("delete.do")) {
			
			command = new BDeleteCommand();
			command.execute(request, response);
			
			viewPage = "delete_complete.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);  //requestdispatcher = request�� ����ִ� ������ �ٸ� jsp�� ���������� ���� �� �� �ִ�.
		dispatcher.forward(request, response);
				
		
		
	}

}
