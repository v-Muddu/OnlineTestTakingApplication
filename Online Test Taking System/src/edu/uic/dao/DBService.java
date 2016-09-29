package edu.uic.dao;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import java.util.SortedMap;

import javax.servlet.jsp.jstl.sql.Result;
import javax.servlet.jsp.jstl.sql.ResultSupport;

public class DBService {

	Connection connection;
	DatabaseMetaData databaseMetaData;
	Statement statement;
	ResultSet resultSet, rs;
	ResultSetMetaData resultSetMetaData;
	Result result;
	String userName;

	public DBService(DBDao dao) {
		this.connection = dao.getConnection();
		this.userName = dao.getUserName();
	}

	public Result fetchDataFromTable(String tablename, int limit, int offset) throws SQLException {

		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		if (limit != -1 && offset != -1)
			resultSet = statement.executeQuery("select * from " + tablename + " limit " + limit + " offset " + offset);
		else
			resultSet = statement.executeQuery("select * from " + tablename);

		result = ResultSupport.toResult(resultSet);

		return result;
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
		statement.executeUpdate("INSERT INTO " + tableName + " VALUES " + values);

	}

	public void selectAllEmpIds(String tableName) throws SQLException {

		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);

		resultSet = statement.executeQuery("select fullname,emp_id from " + tableName);

		result = ResultSupport.toResult(resultSet);
		for (int i = 0; i < result.getRowCount(); i++)
			System.out.println(result.getRows()[i]);

	}

	public void updateTableContents(String tableName, String values, int emp_no) throws SQLException {
		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		statement.executeUpdate("Update " + tableName + " SET " + values + " WHERE emp_id = " + emp_no);
		resultSet = statement.executeQuery("select * from " + tableName + " where emp_id =" + emp_no);
		result = ResultSupport.toResult(resultSet);
		for (int i = 0; i < result.getRowCount(); i++)
			System.out.println(result.getRows()[i]);

	}

	public void deleteTableContents(String tableName, int emp_no) throws SQLException {
		statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		statement.executeUpdate("DELETE FROM " + tableName + " WHERE emp_id = " + emp_no);
		resultSet = statement.executeQuery("select * from " + tableName + " where emp_id =" + emp_no);
		result = ResultSupport.toResult(resultSet);
		for (int i = 0; i < result.getRowCount(); i++)
			System.out.println(result.getRows()[i]);

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
