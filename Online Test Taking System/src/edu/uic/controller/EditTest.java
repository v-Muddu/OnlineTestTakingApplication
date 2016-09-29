package edu.uic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class EditTest extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		try {

			request.getRequestDispatcher("//jsp/ViewScores.jsp").forward(request, response);
		

		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}

}