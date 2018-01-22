package com.sosks1313.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.sosks1313.dto.BDto;

public class bDao{
	
	
	/*
	public ArrayList<BDto> lists() { //리스트에 게시글을 조회하여 불러온다.
		ArrayList<BDto> dtos = new ArrayList<BDto>(); //배열 dtos
		
		Connection connection = null; //DB연결
		PreparedStatement preparedStatement = null; //represents a precompiled SQL statement
		ResultSet resultSet = null; //데이터베이스 결과 집합을 나타내는 데이터 테이블. 대개 데이터베이스를 쿼리하는 문을 실행하여 생성됩니다.
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver"); //mysql jdbc 드라이버 로딩
			connection = DriverManager.getConnection("jdbc:mySql://localhost:3306/freeboard", "test", "sky0595");
			
			String query = "SELECT bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent FROM mvcboard ORDER BY bGroup DESC, bStep ASC";// db에 있는 값을 가져온다, bGroup 역방향 정렬(DESC) 후 bStep 정방향 정렬(ASC)  
			
			preparedStatement = connection.prepareStatement(query); //위에 작성한 쿼리문을 connection으로 연결된 db에 전송
			
			resultSet = preparedStatement.executeQuery(); //select문의 결과를 resultSet에 넣는다.
			
			while(resultSet.next()) {//resultSet에 들어온 모든 레코드를 읽기(반복문)
				int bId = resultSet.getInt("bId");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				int bHit = resultSet.getInt("bHit");
				int bGroup = resultSet.getInt("bGroup");
				int bStep = resultSet.getInt("bStep");
				int bIndent = resultSet.getInt("bIndent");
				
				BDto dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent); //생성자를 이용해 bDto생성
						
				dtos.add(dto);//배열에 얻은 값을 넣음 		
						
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet!=null) resultSet.close();
				if(preparedStatement!=null) preparedStatement.close();
				if(connection!=null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return dtos;

	}//list()
	*/
	
	
	
	public void write(String bdTitle, String bName, String bTitle, String bContent) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		String bdTitle_nospace = bdTitle.replaceAll(" ", "");;
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); //mysql jdbc 드라이버 로딩
			connection = DriverManager.getConnection("jdbc:mySql://localhost:3306/freeboard", "test", "sky0595");
			
			String query = "INSERT INTO ";
			
			String query_1 = " (bName, bTitle, bContent, bHit, bGroup, bStep, bIndent) VALUES(?, ?, ?, 0, (select * from(select max(bId)+1 from ";
			String query_2 =") as temp), 0, 0)"; //각 변수의 값을 테이블에 추가하는 쿼리문  
			String finalquery = query + bdTitle_nospace + query_1 + bdTitle_nospace + query_2;
			System.out.println("write: " + finalquery);
			preparedStatement = connection.prepareStatement(finalquery);

			preparedStatement.setString(1, bName); //첫번째 벨류(=?)에 넣을값= bNmame
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);

			int rn = preparedStatement.executeUpdate(); //리턴이 있다면 작용한 열의 갯수 반환, 없다면 0을 반환한다.
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(preparedStatement!=null) preparedStatement.close();
				if(connection!=null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}//write
	
	public BDto contentView(String strId, String bdTitle) {
		
		upHit(strId, bdTitle);
		
		BDto dto = null;
		
		String bdTitle_nospace = bdTitle.replaceAll(" ", "");
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); //mysql jdbc 드라이버 로딩
			connection = DriverManager.getConnection("jdbc:mySql://localhost:3306/freeboard", "test", "sky0595");
			
			String query = "SELECT * FROM ";
			String query_1 = " WHERE bId=?"; //db에서 해당 bId을 가진 데이터를 가져온다  
			String finalquery = query + bdTitle_nospace + query_1;
			preparedStatement = connection.prepareStatement(finalquery);
			preparedStatement.setInt(1,  Integer.parseInt(strId));
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				int bId = resultSet.getInt("bId");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				int bHit = resultSet.getInt("bHit");
				int bGroup = resultSet.getInt("bGroup");
				int bStep = resultSet.getInt("bStep");
				int bIndent = resultSet.getInt("bIndent");
				
				dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet!=null) resultSet.close();
				if(preparedStatement!=null) preparedStatement.close();
				if(connection!=null) connection.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return dto; //dto 값을 반환한다.
	} //contentView
	
	public void upHit(String bId, String bdTitle) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		String bdTitle_nospace = bdTitle.replaceAll(" ", "");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freeboard", "test", "sky0595");
			
			String query = "UPDATE ";
			String query_1 = " SET bHit = bHit + 1 WHERE bId = ?";
			String finalquery = query + bdTitle_nospace + query_1;
			System.out.println("UPHIT: " +finalquery);
			preparedStatement = connection.prepareStatement(finalquery);
			preparedStatement.setInt(1, Integer.parseInt(bId));
			
			int rn = preparedStatement.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				if(preparedStatement!=null) preparedStatement.close();
				if(connection!=null) connection.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}//upHit
	
	public BDto modify(String strId, String bdTitle) {
		
		BDto dto = null;
		String bdTitle_nospace = bdTitle.replaceAll(" ", "");

		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freeboard", "test", "sky0595");
		
			String query = "SELECT * FROM ";
			String query_1 = " WHERE bId=?";
			
			String finalquery = query + bdTitle_nospace + query_1;
		
			preparedStatement = connection.prepareStatement(finalquery);
			preparedStatement.setInt(1, Integer.parseInt(strId));
			resultSet = preparedStatement.executeQuery();
			

			if(resultSet.next()) {
				int bId = resultSet.getInt("bId");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				int bHit = resultSet.getInt("bHit");
				int bGroup = resultSet.getInt("bGroup");
				int bStep = resultSet.getInt("bStep");
				int bIndent = resultSet.getInt("bIndent");
				
				dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet!=null) resultSet.close();
				if(preparedStatement!=null) preparedStatement.close();
				if(connection!=null) connection.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dto;
	} //modify()
	
	public void modifyComplete(String bId, String bName, String bTitle, String bContent, String bdTitle) {
		
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		String bdTitle_nospace = bdTitle.replaceAll(" ", "");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freeboard", "test", "sky0595");
		
			String query = "UPDATE ";
			String query_1 = " SET bTitle=?, bContent=? WHERE bId=?";
		
			String finalquery = query + bdTitle_nospace + query_1;

			preparedStatement = connection.prepareStatement(finalquery);
			preparedStatement.setString(1, "(수정)"+bTitle);
			preparedStatement.setString(2, bContent);
			preparedStatement.setInt(3, Integer.parseInt(bId));
			
			int rn = preparedStatement.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				if(preparedStatement!=null) preparedStatement.close();
				if(connection!=null) connection.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	} //modifyComplete() 
	
	public void delete(String bId, String bdTitle) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		String bdTitle_nospace = bdTitle.replaceAll(" ", "");
		
		System.out.println("delete bId: " + bId);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freeboard", "test", "sky0595");
		
			String query ="DELETE FROM ";
			String query_1 = " WHERE bId = ?";
			String finalquery = query + bdTitle_nospace + query_1;
			
			System.out.println("delete query: " + finalquery);
			
			preparedStatement = connection.prepareStatement(finalquery);
			preparedStatement.setInt(1, Integer.parseInt(bId));
			
			int rn = preparedStatement.executeUpdate();
				   
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				if(preparedStatement!=null) preparedStatement.close();
				if(connection!=null) connection.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}


	} //delete
	
	public void makeNewBoard(String bdTitle) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/newboard", "test", "sky0595");
		
			String query = "SELECT * FROM newboard";
			preparedStatement = connection.prepareStatement(query);
			
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				if(bdTitle.equals(resultSet.getString("bdTitle"))) {

				}
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<BDto> news() { //리스트에 게시글을 조회하여 불러온다.
		ArrayList<BDto> dtos = new ArrayList<BDto>(); //배열 dtos
		
		Connection connection = null; //DB연결
		PreparedStatement preparedStatement = null; //represents a precompiled SQL statement
		ResultSet resultSet = null; //데이터베이스 결과 집합을 나타내는 데이터 테이블. 대개 데이터베이스를 쿼리하는 문을 실행하여 생성됩니다.
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver"); //mysql jdbc 드라이버 로딩
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freeboard", "test", "sky0595");
			
			String query = "SELECT * FROM newboard";// db에 있는 값을 가져온다, bGroup 역방향 정렬(DESC) 후 bStep 정방향 정렬(ASC)  
			
			preparedStatement = connection.prepareStatement(query); //위에 작성한 쿼리문을 connection으로 연결된 db에 전송
			
			resultSet = preparedStatement.executeQuery(); //select문의 결과를 resultSet에 넣는다.
			
			while(resultSet.next()) {//resultSet에 들어온 모든 레코드를 읽기(반복문)
				
				String bdTitle = resultSet.getString("bdTitle");
				int bdId = resultSet.getInt("bdId");
				
				BDto dto = new BDto(bdTitle, bdId); //생성자를 이용해 bDto생성
						
				dtos.add(dto);//배열에 얻은 값을 넣음 		
						
				
			}
		}catch(Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(resultSet!=null) resultSet.close();
					if(preparedStatement!=null) preparedStatement.close();
					if(connection!=null) connection.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
		

			}
		return dtos;
	} //메인에 게시판 리스트 불러오기
	
public BDto boardView(String strId) {
		
		
		BDto dto = null;
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); //mysql jdbc 드라이버 로딩
			connection = DriverManager.getConnection("jdbc:mySql://localhost:3306/freeboard", "test", "sky0595");
			
			String query = "SELECT * FROM newboard WHERE bdId=?"; //db에서 해당 bId을 가진 데이터를 가져온다  
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(strId));
			resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {

				int bdId = resultSet.getInt("bdId");
				String bdTitle  = resultSet.getString("bdTitle");		
				dto = new BDto(bdTitle, bdId);
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet!=null) resultSet.close();
				if(preparedStatement!=null) preparedStatement.close();
				if(connection!=null) connection.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return dto; //dto 값을 반환한다.
	}//생성된 게시판 불러오기

	public ArrayList<BDto> viewfreeboard(String strTitle) {
		
		ArrayList<BDto> dtos = new ArrayList<BDto>();
	
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
	
		try {
			Class.forName("com.mysql.jdbc.Driver"); //mysql jdbc 드라이버 로딩
			connection = DriverManager.getConnection("jdbc:mySql://localhost:3306/freeboard", "test", "sky0595");
		
			String query = "SELECT * FROM ";
			String bdTitle_nospace = strTitle.replaceAll(" ", "");	
			String query_1 = " ORDER BY bId DESC";
			String query_final = query + bdTitle_nospace + query_1;
			preparedStatement = connection.prepareStatement(query_final);
			
			System.out.println(query_final);
			
			resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {
				int bId = resultSet.getInt("bId");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				int bHit = resultSet.getInt("bHit");
				int bGroup = resultSet.getInt("bGroup");
				int bStep = resultSet.getInt("bStep");
				int bIndent = resultSet.getInt("bIndent");
				
				BDto dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
				
				dtos.add(dto);
			
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet!=null) resultSet.close();
				if(preparedStatement!=null) preparedStatement.close();
				if(connection!=null) connection.close();
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	
		return dtos; //dto 값을 반환한다.
	}//해당 게시판의 자유게시판 불러오기


	
}
