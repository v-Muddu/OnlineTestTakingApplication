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
		 br {
		  line-height: 55%;
		     }
		</style>
	</head>
	<header style="text-align: center; padding-bottom: 100px; padding-top:20px">
		<h1>
			Student Home
		</h1>		
		<div style="text-align: center; padding-top: 25px">
			Welcome <%=request.getParameter("username")%>		
		</div>
	</header>
	<body>
		<form >			
			<table style="width: 100%">
				<tr>
					<th style="width: 50%; text-align: right;">View Available Tests:</th>
					<th style="width: 2%"/>
					<th style="text-align: left;">
						 <select name="testName" id="select">			
							<option value = "Maths">Maths</option>
							<option value="EAD">EAD</option>
							<option value="��peration Management">Operation Management</option>
						</select>			
					</th>
				</tr>				
			</table>
			<table style="width: 100%; padding-top: 25px">
				<tr>								
					<th style="text-align: right; padding-left: 70px"><input type="submit" value="TakeTest" formmethod="get" formaction="TakeTest" /></th>
					<th style="width: .3%"/>					
					<th align="left">
						<input type="submit" value="View All Scores" formmethod="get" formaction="ViewScores" />	
					</th>
				</tr>
			</table>				
		</form>
	</body>
</html>