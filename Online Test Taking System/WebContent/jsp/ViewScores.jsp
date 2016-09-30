<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<html>
	<head>
		<style>		
		tab1 {
			padding-left: 1em;
		}
		
		tab3 {
			padding-left: 3em;
		}
		
		br {
			line-height: 55%;
		}
		</style>
	</head>
	<body>
		<form action="Register" method="post">
			<H1>
				<br />
				<Center>Scores</Center>
				<hr>
			</H1>	
			<table style="width: 100%">
				<tr>
					<th align="right" style="width: 50%">Test 1:</th>
					<th style="width: 2%" />
					<th align="left">100</th>
				</tr>
				</br>
				<tr>
					<th align="right">Test 2:</th>
					<th style="width: 2%" />
					<th align="left">96</th>
				</tr>
				</br>
			</table>
			</br>
			<table style="width: 100%">
				<tr>
					<th style="width: 50%">
						<center>
							<th align="left" style="width: 2%" />
								<input type="submit" value="Ok" onclick="window.history.back();" />
							</th>
						</center>
					<th>
				</tr>
			</table>	
			<hr>	
		</form>
	</body>
</html>