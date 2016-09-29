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
			<Center>Student home</Center>
			
			<hr></H1>
Welcome <%=request.getParameter("username")%>!!!

	<table style="width: 100%">
						<tr>
							<th align="right" style="width: 50%">View Available Tests:</th>
							<th style="width: 2%"/>
							<th align="left"> <select name="testName" id="select">
						
							<option value = "Maths">Maths</option>
							<option value="EAD">EAD</option>
							<option value="Öperation Management">Operation Management</option>
							</select> 
							
							</th>
						</tr> 
						
					</br>
					</table>
						<table style="width: 100%">
						<tr >
							
						<th align="right" ><input type="submit" value="TakeTest" formmethod="get" formaction="TakeTest" /></th>
<th style="width: .3%"/>					
							<th align="left"><input type="submit" value="View All Scores" formmethod="get" formaction="ViewScores" /></th>
						</tr>
				</table>
						
			</form>
</body>
</html>