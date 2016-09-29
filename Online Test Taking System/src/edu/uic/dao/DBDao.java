package edu.uic.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBDao {

	public String userName;
	public String getUserName() {
		return userName;
	}

	private String password;
	private String dbmsHost;
	private String databaseSchema;
	private final String jdbcDriver;
	private String url;
	public Connection connection;

	public DBDao(String userName, String password, String dbmsHost, String databaseSchema, String jdbcDriverForDB) {
		this.userName = userName;
		this.password = password;
		this.dbmsHost = dbmsHost;
		this.databaseSchema = databaseSchema;
		this.jdbcDriver = jdbcDriverForDB;
		this.url = this.dbmsHost + this.databaseSchema;

		System.out.println("Host Server to be connected ::: " + this.url);
	}

	public Connection getConnection() {
		return connection;
	}

	public void createConnection() throws ClassNotFoundException {

		try {
			Class.forName(jdbcDriver);
			try {
				connection = DriverManager.getConnection(url, userName, password);
				System.out.println("Connection Established");
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} catch (ClassNotFoundException e) {
			System.err.println("JDBC Driver " + jdbcDriver + " is not configured . Please use MYSQL JDBCdriver");
			throw e;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void closeConnection() {
		try {
			connection.close();
			System.out.println("Connection Closed");

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}