package com.sosks1313.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sosks1313.command.BCommand;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("*.go")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
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
		
		String uri = request.getRequestURI(); //파일 경로까지의 패스를 가져옴
		System.out.println("URI: " + uri);
		
		String[] arrURI = uri.split("/"); //uri의 경로에서 / 마다 나눠서 배열에 넣음
		
		String comm = arrURI[arrURI.length-1]; //uri의 마지막 경로를 comm에 저장
		
		if(comm.equals("makeboard.go")) {
		
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
		
		
		
			String bdTitle = request.getParameter("bdTitle");
		
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freeboard", "test", "sky0595");
		
				String query = "SELECT bdTitle FROM newboard";
				preparedStatement = connection.prepareStatement(query);
			
				resultSet = preparedStatement.executeQuery();
			
				while(resultSet.next()) {
					if(resultSet.getString("bdTitle").equals(bdTitle)) {
						RequestDispatcher dispatcher = request.getRequestDispatcher("/BoardPage/OverlapbdTitle.jsp");
						dispatcher.forward(request, response);
						
						break;
					}
					String query2 = "INSERT INTO newboard(bdTitle) VALUE(?)";
					preparedStatement = connection.prepareStatement(query2);
					preparedStatement.setString(1, bdTitle);

					int rn = preparedStatement.executeUpdate();
					RequestDispatcher dispatcher = request.getRequestDispatcher("/BoardPage/SuccessNewBoard.jsp");
					dispatcher.forward(request, response);

					
				
				}
			}catch(Exception e) {
				e.printStackTrace();
				RequestDispatcher dispatcher = request.getRequestDispatcher("/BoardPage/OverlapbdTitle.jsp");
				dispatcher.forward(request, response);

			}finally {
				try {
				
					if(preparedStatement!=null) preparedStatement.close();
					if(resultSet!=null) resultSet.close();
					if(connection!=null) connection.close();
				
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		
		}
	}


}
