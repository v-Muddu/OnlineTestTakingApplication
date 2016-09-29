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
<script>  
//validations are not working
function validateform(){  
var name=document.myform.username.value;  
var password=document.myform.password.value;  
var fname = document.myform.fname.value;  
var checkPassword = document.myform.password1.value;  
var uin = document.myform.uin.value;  

if (name==null || name==""){  
  alert("Name can't be blank");  
  return false;  
}else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }else if(checkPassword!=password)  {
	  alert("Password Does not match");  
	  return false; 
  }else if(checkPassword!=password)  {
	  alert("Password Does not match");  
	  return false; 
  }else if (isNaN(uin)){  
	  alert("Enter only numbers for UIN");  
	  return false;  
	  }	  
  else if (fname==null || fname==""){  
	  alert("First Name can't be blank");  
	  return false;  
	}
}  
</script> 
</head>
<body>
	<form name ="myform" action="Register" method="post" onsubmit="return validateForm()">
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
					</br><font>
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
							<th align="right">Date Of Birth: </th>
							<th style="width: 2%"/>
							<th align="left"><input type="date" name="date" pattern="YYYY-MM-DD"></th>
					</tr>
					</br>
					
						</table>
						</br>
				<table style="width: 100%">
						<tr ><th style="width: 50%">
						<center>	<th align="left" style="width: 2%"/><input type="submit" value="Register" /></th></center>
							<th>
						</tr>
				</table>
		

		
		<hr>

	</form>
</body>
</html>