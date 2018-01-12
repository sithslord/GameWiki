package com.sosks1313.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;


import java.util.ArrayList;


import com.sosks1313.dto.BDto;

public class bDao{
	
	
	
	public ArrayList<BDto> lists() { //����Ʈ�� �Խñ��� ��ȸ�Ͽ� �ҷ��´�.
		ArrayList<BDto> dtos = new ArrayList<BDto>(); //�迭 dtos
		
		Connection connection = null; //DB����
		PreparedStatement preparedStatement = null; //represents a precompiled SQL statement
		ResultSet resultSet = null; //�����ͺ��̽� ��� ������ ��Ÿ���� ������ ���̺�. �밳 �����ͺ��̽��� �����ϴ� ���� �����Ͽ� �����˴ϴ�.
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver"); //mysql jdbc ����̹� �ε�
			connection = DriverManager.getConnection("jdbc:mySql://localhost:3306/freeboard", "test", "sky0595");
			
			String query = "SELECT bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent FROM mvcboard ORDER BY bGroup DESC, bStep ASC";// db�� �ִ� ���� �����´�, bGroup ������ ����(DESC) �� bStep ������ ����(ASC)  
			
			preparedStatement = connection.prepareStatement(query); //���� �ۼ��� �������� connection���� ����� db�� ����
			
			resultSet = preparedStatement.executeQuery(); //select���� ����� resultSet�� �ִ´�.
			
			while(resultSet.next()) {//resultSet�� ���� ��� ���ڵ带 �б�(�ݺ���)
				int bId = resultSet.getInt("bId");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				int bHit = resultSet.getInt("bHit");
				int bGroup = resultSet.getInt("bGroup");
				int bStep = resultSet.getInt("bStep");
				int bIndent = resultSet.getInt("bIndent");
				
				BDto dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent); //�����ڸ� �̿��� bDto����
						
				dtos.add(dto);//�迭�� ���� ���� ���� 		
						
				
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
	
	public void write(String bName, String bTitle, String bContent) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); //mysql jdbc ����̹� �ε�
			connection = DriverManager.getConnection("jdbc:mySql://localhost:3306/freeboard", "test", "sky0595");
			
			String query = "INSERT INTO mvcboard(bName, bTitle, bContent, bHit, bGroup, bStep, bIndent) VALUES(?, ?, ?, 0, (select * from(select max(bId)+1 from mvcboard) as temp), 0, 0)"; //�� ������ ���� ���̺��� �߰��ϴ� ������  
			
			preparedStatement = connection.prepareStatement(query);

			preparedStatement.setString(1, bName); //ù��° ����(=?)�� ������= bNmame
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);

			int rn = preparedStatement.executeUpdate(); //������ �ִٸ� �ۿ��� ���� ���� ��ȯ, ���ٸ� 0�� ��ȯ�Ѵ�.
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
	
	public BDto contentView(String strId) {
		
		upHit(strId);
		
		BDto dto = null;
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); //mysql jdbc ����̹� �ε�
			connection = DriverManager.getConnection("jdbc:mySql://localhost:3306/freeboard", "test", "sky0595");
			
			String query = "SELECT * FROM mvcboard WHERE bId=?"; //db���� �ش� bId�� ���� �����͸� �����´�  
			preparedStatement = connection.prepareStatement(query);
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
		
		return dto; //dto ���� ��ȯ�Ѵ�.
	} //contentView
	
	public void upHit(String bId) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freeboard", "test", "sky0595");
			
			String query = "UPDATE mvcboard SET bHit = bHit + 1 WHERE bId = ?";
			
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, bId);
			
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
	
	public BDto modify(String strId) {
		
		BDto dto = null;
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freeboard", "test", "sky0595");
		
			String query = "SELECT * FROM mvcboard WHERE bId=?";
		
			preparedStatement = connection.prepareStatement(query);
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
	
	public void modifyComplete(String bId, String bName, String bTitle, String bContent) {
		
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freeboard", "test", "sky0595");
		
			String query = "UPDATE mvcboard SET bTitle=?, bContent=? WHERE bId=?";
		
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, "(����)"+bTitle);
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
	
	public void delete(String bId) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/freeboard", "test", "sky0595");
		
			String query ="DELETE FROM mvcboard WHERE bId = ?";
			preparedStatement = connection.prepareStatement(query);
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
	

}