<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<html>
<head>
 <style>
    /* table, th, td {
	border: 1px solid black;
} */
  tab1 { padding-left: 1em; }
 tab3 { padding-left: 3em; }
 br {
        line-height: 55%;
     }
</style> 
</head>
<body>
	<form action="Register" method="post">
		<H1>
		<br />
			<Center>Registration</Center>
			
			<hr>
		</H1>

			
				<table style="width: 100%">
						<tr>
							<th align="right" style="width: 50%">Username:</th>
							<th style="width: 2%"/>
							<th align="left"> <input type="text" name="username"></th>
						</tr> 
					</br>
						<tr>
							<th align="right">Password: </th>
							<th style="width: 2%"/>
							<th align="left"><input type="password" name="password"></th>
						</tr>
					</br>
					<tr>
							<th align="right">Re-type Password: </th>
							<th style="width: 2%"/>
							<th align="left"><input type="password" name="password1"></th>
					</tr>
					</br>
					<tr>
							<th align="right">UIN: </th>
							<th style="width: 2%"/>
							<th align="left"><input type="text" name="uin"></th>
					</tr>
					
					</br>
					<tr>
							<th align="right">First Name: </th>
							<th style="width: 2%"/>
							<th align="left"><input type="text" name="fname"></th>
					</tr>
					</br>
						<tr>
							<th align="right">Last Name: </th>
							<th style="width: 2%"/>
							<th align="left"><input type="text" name="lname" ></th>
					</tr>
					</br>
						<tr>
							<th align="right">Secret Question: </th>
							<th style="width: 2%"/>
							<th align="left"><input type="text" name="sques" ></th>
					</tr>
					</br>
						<tr>
							<th align="right">Secret Answer: </th>
							<th style="width: 2%"/>
							<th align="left"><input type="text" name="sans" ></th>
					</tr>
					</br>
						</table>
						</br>
				<table style="width: 100%">
						<tr ><th style="width: 50%">
						<center>	<th align="left" style="width: 2%"/><input type="submit" value="Register" method="post" /></th></center>
							<th>
						</tr>
				</table>
		

		
		<hr>

	</form>
</body>
</html>