package edu.uic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uic.dao.DBDao;
import edu.uic.dao.DBService;


public class Register extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private final static String mysqlJdbcDriver = "com.mysql.jdbc.Driver";

	private static String dbUserNameForTestSchema = "s16g40";
	private static String dbPasswordForTestSchema = "s16g40FpqU5";
	private static String testSchema = "s16g40";

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		try {
String username = request.getParameter("username");
String password = request.getParameter("password");
String uin = request.getParameter("uin");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String dateOfBirth = request.getParameter("date");

String userQuery = " `s16g40`.`f16g324_user` (`UIN`, `username`, `password`, `firstname`, `lastname`, `role_fk`, `DateOfBirth`)";
String values = "('"+uin+"', '"+username+"', '"+password+"', '"+fname+"', '"+lname+"', '"+1+"', '"+dateOfBirth+"')";

System.out.println(username);
DBDao dao1 = new DBDao(dbUserNameForTestSchema,
		 dbPasswordForTestSchema, "jdbc:mysql://131.193.209.57:3306/",
		 testSchema, mysqlJdbcDriver);
dao1.createConnection();
DBService serv = new DBService(dao1);
serv.insertTableContents(userQuery, values);
out.print("You are successfully registered...");

			request.getRequestDispatcher("//jsp/login.jsp").forward(request, response);

		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		try {

			request.getRequestDispatcher("//jsp/register.jsp").forward(request, response);
		

		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}

}