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
import com.sosks1313.dto.BDto;

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
			PreparedStatement preparedStatement, preparedStatement2, preparedStatement3, preparedStatement4 = null;
			ResultSet resultSet = null;
		
		
		
			String bdTitle = request.getParameter("bdTitle");
			
			
			System.out.println("bdTitle at makeboard: " + bdTitle);

		
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freeboard", "test", "sky0595");
		
				String query = "SELECT bdTitle FROM newboard";
				preparedStatement = connection.prepareStatement(query);
			
				resultSet = preparedStatement.executeQuery();
			
				
					String query2 = "INSERT INTO newboard(bdTitle) VALUE(?)";
					preparedStatement2 = connection.prepareStatement(query2);
					preparedStatement2.setString(1, bdTitle);

					int rn = preparedStatement2.executeUpdate();
					
				
					String query4 = "CREATE TABLE ";
					String query4_1 = " (bId INT(4) NOT NULL AUTO_INCREMENT PRIMARY KEY, bName VARCHAR(20), bTitle VARCHAR(100), bContent VARCHAR(500), bDATE DATETIME DEFAULT CURRENT_TIMESTAMP, bHit INT(4) DEFAULT 0, bGroup INT(4), bStep INT(4), bIndent INT(4))charset=euckr";
					
					String bdTitle_nospace = bdTitle.replaceAll(" ", "");
					
					String createTable = query4 + bdTitle_nospace + query4_1;
					
					System.out.println(createTable);
					preparedStatement3 = connection.prepareStatement(createTable);
					
					int rn2 = preparedStatement3.executeUpdate();
					
					String query5 = "CREATE TABLE ";
					String query5_1 = "(menuTitle VARCHAR(100) PRIMARY KEY, menuContent TEXT(65500), menuDATE DATETIME DEFAULT CURRENT_TIMESTAMP)charset=euckr";
					
					String bdTitle_nospaceMenu = bdTitle_nospace + "_MENU";
					
					String createTableMenu = query5 + bdTitle_nospaceMenu + query5_1;
					
					System.out.println(createTableMenu);
					preparedStatement4 = connection.prepareStatement(createTableMenu);
					
					int rn3 = preparedStatement4.executeUpdate();
					
					
					/*
					String query5 = "UPDATE ";
					
					String query5_1 = ", newboard SET ?.bdId = newboard";
					String selectbdId = query5 + bdTitle_nospace + query5_1;
					preparedStatement4 = connection.prepareStatement(selectbdId);
					preparedStatement4.setString(1, bdTitle);

					int rn3 = preparedStatement4.executeUpdate();
*/
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("/BoardPage/SuccessNewBoard.jsp");
					dispatcher.forward(request, response);

					
				
				
			}catch(Exception e) {
				e.printStackTrace();
				RequestDispatcher dispatcher = request.getRequestDispatcher("/BoardPage/OverlapbdTitle.jsp");
				dispatcher.forward(request, response);

			}finally {
				try {
				
					if(preparedStatement4!=null) preparedStatement4.close();
					if(resultSet!=null) resultSet.close();
					if(connection!=null) connection.close();
				
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		
		}
	}


}
