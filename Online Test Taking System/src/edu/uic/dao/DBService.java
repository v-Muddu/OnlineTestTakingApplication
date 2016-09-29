package edu.uic.dao;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;


public class DBService {

	Connection connection;
	DatabaseMetaData databaseMetaData;
	Statement statement;
	ResultSet resultSet, rs;
	ResultSetMetaData resultSetMetaData;
	String userName;

	public DBService(DBDao dao) {
		this.connection = dao.getConnection();
		this.userName = dao.getUserName();
	}

	public ResultSet fetchDataFromTable(String tablename, int limit, int offset) throws SQLException {

		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		if (limit != -1 && offset != -1)
			resultSet = statement.executeQuery("select * from " + tablename + " limit " + limit + " offset " + offset);
		else
			resultSet = statement.executeQuery("select * from " + tablename);


		return resultSet;
	}

	public ResultSet fetchDataFromTable(String tablename, String wherClause) throws SQLException {

		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		System.out.println("select * from " + tablename + " where " + wherClause);
		resultSet = statement.executeQuery("select * from " + tablename + " where " + wherClause);

		return resultSet;
	}

	public void describeTableColumns(String tableName) throws SQLException {

		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		resultSet = statement.executeQuery("select * from " + tableName + " limit 1");
		resultSetMetaData = resultSet.getMetaData();

		int numberOfColumns = (resultSetMetaData).getColumnCount();

		for (int i = 1; i <= numberOfColumns; i++)
			System.out.println(resultSetMetaData.getColumnName(i) + " :::: " + resultSetMetaData.getColumnType(i));

	}

	public Map<String, String> insertTableContentsFrame(String tableName) throws SQLException {

		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		resultSet = statement.executeQuery("select * from " + tableName + " limit " + 1);
		resultSetMetaData = resultSet.getMetaData();

		int numberOfColumns = (resultSetMetaData).getColumnCount();
		Map<String, String> columnDesc = new HashMap<String, String>();
		for (int i = 1; i <= numberOfColumns; i++)
			columnDesc.put(resultSetMetaData.getColumnName(i), resultSetMetaData.getColumnTypeName(i));

		return columnDesc;

	}

	public void insertTableContents(String tableName, String values) throws SQLException {
		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		System.out.println("INSERT INTO " + tableName + " VALUES " + values);
		statement.executeUpdate("INSERT INTO " + tableName + " VALUES " + values);

	}


	

	public void listTables() throws SQLException {
		DatabaseMetaData dbmd = connection.getMetaData();
		String[] types = { "TABLE" };
		ResultSet resultSet = dbmd.getTables(null, null, "%", types);

		while (resultSet.next())
			System.out.println("tableName ::::" + resultSet.getString(3));

	}

	public void closeStmtResultSet() {
		try {
			resultSet.close();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
