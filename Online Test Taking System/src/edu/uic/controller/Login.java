package edu.uic.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uic.dao.DBDao;
import edu.uic.dao.DBService;

public class Login extends HttpServlet {
	/**
	 * 
	 */
//	private static final long serialVersionUID = 1L;

	private final static String mysqlJdbcDriver = "com.mysql.jdbc.Driver";

	private static String dbUserNameForTestSchema = "s16g40";
	private static String dbPasswordForTestSchema = "s16g40FpqU5";
	private static String testSchema = "s16g40";

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
	
		try {
			DBDao dao1 = new DBDao(dbUserNameForTestSchema, dbPasswordForTestSchema,
					"jdbc:mysql://131.193.209.57:3306/", testSchema, mysqlJdbcDriver);
			dao1.createConnection();
			DBService serv = new DBService(dao1);
			String wherClause = "username = '" + userName + "'";
			ResultSet resultSet = serv.fetchDataFromTable("f16g324_user", wherClause);
			boolean returnType = false;
			int role = 1;
			while (resultSet.next()) {
				if (resultSet.getString(3).equals(password)) {
					role = Integer.parseInt(resultSet.getString(6));
					returnType = true;
				}

			}
			
			dao1.closeConnection();
			if (!returnType)
				request.getRequestDispatcher("//jsp/LoginFailure.jsp").forward(request, response);
			else if(role==1)
				request.getRequestDispatcher("//jsp/StudentHome.jsp").forward(request, response);
			else if(role==2)
				request.getRequestDispatcher("//jsp/TeacherHome.jsp").forward(request, response);
		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}
	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		String fileName = "User Guide";
//		String filePath = "doc/Online Test Taking Web AppP1.pdf";
//		response.setContentType("APPLICATION/PDF");
//		response.setHeader("Content-Disposition","inline:fileName=\""+fileName+"\"");
//		FileInputStream fi = new FileInputStream(filePath+fileName);
//		int i ;
//		while((i=fi.read()) != -1)
//			out.write(i);
//			fi.close();
//		out.close();
//	}

}