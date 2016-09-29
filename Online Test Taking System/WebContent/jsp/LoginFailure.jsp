<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<html>
<head>
 <style>
/*     table, th, td {
	border: 1px solid black;
}  */
  tab1 { padding-left: 1em; }
 tab3 { padding-left: 3em; }
 br {
        line-height: 55%;
     }
</style> 
</head>
<body>
	<form action="Login" method="post">
		<H1>
		<br />
			<Center>Online Test Taking System</Center>
			
			<hr>
		</H1>
		
			<br /> <br /> 
			<br /> <br />
			<br /> <br />
			<br />
			
				<table style="width: 100%">
						<tr>
							<th align="right" style="width: 50%">Username:</th>
							<th style="width: 2%"/>
							<th align="left"> <input type="text" id="username"></th>
						</tr> 
					</br>
						<tr>
							<th align="right">Password: </th>
							<th style="width: 2%"/>
							<th align="left"><input type="password" id="password"></th>
						</tr>
					</br>
						</table>
						</br>
				<table style="width: 100%">
						<tr >
							<th align="right" ><input type="submit" value="Register" onclick="form.action='Register';" /></th>
							<th style="width: .3%"/>
							<th align="left"><input type="submit" value="Login" /></th>
						</tr>
						</table><table>
						<tr >
							<th align="right" style="width: 50%"/><font color="red">* Please enter correct username/password to proceed</font></th>
							<th align="left"></th>
						</tr>
				</table>
		

		<br /> <br />
		<br /> <br />
		<br /> <br /> 
		<br /> <br />
		<hr>

	</form>
</body>
</html>