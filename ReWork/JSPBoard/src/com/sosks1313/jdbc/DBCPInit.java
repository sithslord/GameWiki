package com.sosks1313.jdbc;

import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

public class DBCPInit extends HttpServlet {

	@Override

	public void init() throws ServletException {

		loadJDBCDriver();

		initConnectionPool();

	}

	private void loadJDBCDriver() {

		try {

			Class.forName("com.mysql.jdbc.Driver");

		} catch (ClassNotFoundException ex) {

			throw new RuntimeException("fail to load JDBC Driver", ex);

		}

	}

	private void initConnectionPool() {

		try {

			String jdbcDriver = "jdbc:mysql://localhost:3306/freeboard?" 
					+"useUnicode=true&autoReconnect=true&useTimezone=true&serverTimezone=UTC&connectTimeout=3000&useSSL=false&noAccessToProcedureBodies=true&characterEncoding=utf8";
			String dbUser = "test";

			String dbPass = "sky0595";

			ConnectionFactory connFactory = new DriverManagerConnectionFactory(jdbcDriver, dbUser, dbPass);

			PoolableConnectionFactory poolableConnFactory = new PoolableConnectionFactory(connFactory, null);

			poolableConnFactory.setValidationQuery("select 1");

			GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();

			poolConfig.setTimeBetweenEvictionRunsMillis(1000L * 60L * 5L);

			poolConfig.setTestWhileIdle(true);

			/**
			 * 
			 * 
			 * 
			 * testOnBorrow: Ŀ�ؼ� Ǯ���� Ŀ�ؼ��� ���� �� �׽�Ʈ ����(�⺻��: true)
			 * 
			 * testOnReturn: Ŀ�ؼ� Ǯ�� Ŀ�ؼ��� ��ȯ�� �� �׽�Ʈ ����(�⺻��: false)
			 * 
			 * testWhileIdle: Evictor �����尡 ����� �� (timeBetweenEvictionRunMillis > 0) Ŀ�ؼ� Ǯ �ȿ�
			 * �ִ� ���� ������ Ŀ�ؼ��� ������� �׽�Ʈ ����(�⺻��: false)
			 * 
			 */

			/**
			 * 
			 * �Ӽ� �̸� ����
			 * 
			 * initialSize BasicDataSource Ŭ���� ���� �� ���ʷ� getConnection() �޼��带 ȣ���� �� Ŀ�ؼ� Ǯ�� ä��
			 * ���� Ŀ�ؼ� ����
			 * 
			 * maxActive (dbcp2.x maxTotal) ���ÿ� ����� �� �ִ� �ִ� Ŀ�ؼ� ����(�⺻��: 8)
			 * 
			 * maxIdle Ŀ�ؼ� Ǯ�� �ݳ��� �� �ִ�� ������ �� �ִ� Ŀ�ؼ� ����(�⺻��: 8)
			 * 
			 * minIdle �ּ������� ������ Ŀ�ؼ� ����(�⺻��: 0)
			 * 
			 */

			poolConfig.setMinIdle(4);

			poolConfig.setMaxTotal(50);

			GenericObjectPool<PoolableConnection> connectionPool = new GenericObjectPool<>(poolableConnFactory,
					poolConfig);

			poolableConnFactory.setPool(connectionPool);

			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			PoolingDriver driver = (PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
			driver.registerPool("jspstudy", connectionPool);
			System.out.println("initConnectionPool init success");

		} catch (Exception e) {

			throw new RuntimeException(e);

		}

	}

}