<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>
</head>
<header style="padding-bottom: 40px; text-align: center">
	<tr>
		<td>
			<h1>Welcome to the online test portal</h1>
		</td>
		<td>
			<div style="text-align: right" formaction="usersguide.jsp" formmethod="get">			 
				<a style="padding-right: 20px" href="usersguide.jsp" formaction="AboutUs.jsp" formmethod="get" onclick="parentNode.submit()">User's Guide</a>			
				<a style="padding-right:20px" href="AboutUs.jsp">About Us</a>
			</div>
		</td>		
	</tr>
</header>
<body>
	<form action="/servlet/login" method="post">
		<table width="1024px" align="center" opacity="0.5">			
			<tr style="padding-top: 25px; text-align:center; padding-bottom: 25px">
				<td>
					<h2>Login</h2>					
				</td>
			</tr>
			<tr style="text-align: center;">
				<td>
					Username: <input type="text" name="username" placeholder="enter your username">
				</td>
			</tr>
			<tr>
				<td style="text-align: center; padding-left: 4px">	
					Password: <input type="password" name="password" placeholder="enter your password">	
				</td>
			</tr>
			<tr style=" text-align:center;">
				<td style="padding-left: 37px">
					<input type="submit" value="Login" formaction="/Online_Test_Taking_System/servlet/Login" formmethod="post">&nbsp;&nbsp;
					<input type="submit" value="Sign Up">
				</td>
			</tr>			
		</table>
	</form>
</body>
</html>