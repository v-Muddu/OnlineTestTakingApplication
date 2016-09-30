<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<html>
	<head>
		<style>	
	  tab1 { 
	  padding-left: 1em;
	   }
	 tab3 {
	  padding-left: 7em;
	   }
	 br	  {
	  line-height: 55%;
	   }
		</style>	
	</head>
	<body>
		<form >
			<H1 style="text-align: center; padding-top: 20px">				
				Teacher Home			
			</H1>
			<div style="text-align: center; padding-top: 30px">
					Welcome <%=request.getParameter("username")%>	
			</div>				
			<table style="width: 100%; padding-top: 50px">
				<tr>
					<th align="right" style="width: 50%">Students:</th>
					<th style="width: 2%"/>
					<th align="left"> <select name="studentName" id="select">	
					<option value="Vishwa">Vishwanath</option>		
					<option value = "Sathya">Sathya</option>							
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
					<th style="text-align: center;padding-left: 310px" ><input type="submit" value="AddTest" formmethod="get" formaction="AddTest" /></th>
					<th style="width: .3%"/>					
					<th align="left"></th>
				</tr>
			</table>							
		</form>
	</body>
</html>