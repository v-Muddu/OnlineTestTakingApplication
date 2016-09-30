<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	</head>
	<body>
		<h1 style="text-align: center; padding-bottom: 20px; padding-top: 30px">
			<%=request.getParameter("testName") %>
				Test
		</h1>
		<table style="width: 100%; padding-right: 150px">
			<tr>
				<th align="right" style="width: 50%">Question 1:</th>
				<th style="width: 2%" />
				<th style="text-align: left;"><textarea name="q1" value="Question 1" readonly="readonly" style="width: 50%">Question 1</textarea></th>
			</tr>		
			<tr>
				<th style="text-align: right;">Answer :</th>
				<th style="width: 2%" />
				<th style="text-align: left;">
					<select name="answer" id="select">
						<option value="Answer1">Answer1</option>
						<option value="Answer2">Answer2</option>
						<option value="Answer3">Answer3</option>
						<option value="Answer4">Answer4</option>
						<option value="Answer5">Answer5</option>
					</select>
				</th>
			</tr>
			</br>
			<tr>
				<th style="width: 50%; text-align: right;">Question 2:</th>
				<th style="width: 2%" />
				<th style="text-align: left;"><textarea name="q2" value="Question 2" readonly="readonly" style="width: 50%">Question 2</textarea></th>
			</tr>
			</br>
			<tr>
				<th style="text-align: right;">Answer :</th>
				<th style="width: 2%" />
				<th style="text-align: left;">
					<select name="answer" id="select">
						<option value="Answer1">Answer1</option>
						<option value="Answer2">Answer2</option>
						<option value="Answer3">Answer3</option>
						<option value="Answer4">Answer4</option>
						<option value="Answer5">Answer5</option>
					</select>
				</th>
			</tr>
			</br>
			<tr>
				<th style="width: 50%; text-align: right;">Question 3:</th>
				<th style="width: 2%" />
				<th style="text-align: left; width: 50%"><textarea name="q3" value="Question 3" readonly="readonly">Question 3</textarea></th>
			</tr>
			</br>
			<tr>
				<th style="text-align: right;">Answer :</th>
				<th style="width: 2%" />
				<th style="text-align: left;">
					<select name="answer" id="select">
						<option value="Answer1">Answer1</option>
						<option value="Answer2">Answer2</option>
						<option value="Answer3">Answer3</option>
						<option value="Answer4">Answer4</option>
						<option value="Answer5">Answer5</option>
					</select>
				</th>
			</tr>
			</br>
		</table>
		</br>
		<table style="width: 100%; padding-right: 100px">
			<tr>
				<th style="width: 50%;">					
					<th style="width: 2%;"/>
						<input type="submit" value="Submit" method="post" />
					</th>				
				<th>
			</tr>
		</table>		
	</body>
</html>