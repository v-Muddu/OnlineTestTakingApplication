<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<html>
<head>
 <style>
/*     table, th, td {
	border: 1px solid black;
}  */
  tab1 { padding-left: 1em; }
 tab3 { padding-left: 7em; }
 br {
        line-height: 55%;
     }
</style> 

</head>
<body>
	<form >
	<H1>
		<br />
			<Center>Teacher home</Center>
			
			<hr></H1>
Welcome <%=request.getParameter("username")%>!!!

	<table style="width: 100%">
						<tr>
							<th align="right" style="width: 50%">Students:</th>
							<th style="width: 2%"/>
							<th align="left"> <select name="studentName" id="select">
						
							<option value = "Sathya">Sathya</option>
							<option value="Viswa">Viswa</option>
							<option value="John">John</option>
							<option value="Angie">Angie</option>
							<option value="Martha">Martha</option>
							<option value="Bart">Bart</option>
							</select> 
							<input type="submit" value="View Students" formmethod="get" formaction="ViewStudents" />
							</th>
						</tr> 
						
					</br>
					</table>
						<table style="width: 100%">
						<tr >
							
						<th align="right" ><input type="submit" value="AddTest" formmethod="get" formaction="AddTest" /></th>
<th style="width: .3%"/>					
							<th align="left"></th>
						</tr>
				</table>
						
			</form>
</body>
</html>