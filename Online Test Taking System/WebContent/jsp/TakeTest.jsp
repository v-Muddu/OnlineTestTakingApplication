<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<H1>
		<br />
		<Center><%=request.getParameter("testName") %>
			Test
		</Center>

		<hr>
	</H1>


	<table style="width: 100%">
		<tr>
			<th align="right" style="width: 50%">Question 1:</th>
			<th style="width: 2%" />
			<th align="left"><textarea name="q1" value="Question 1" readonly="readonly" style="width: 50%">Question 1</textarea></th>

		</tr>
		</br>
		<tr>
			<th align="right">Answer :</th>
			<th style="width: 2%" />
			<th align="left"><select name="answer" id="select">

					<option value="Answer1">Answer1</option>
					<option value="Answer2">Answer2</option>
					<option value="Answer3">Answer3</option>
					<option value="Answer4">Answer4</option>
					<option value="Answer5">Answer5</option>
			</select></th>
		</tr>
		</br>
<tr>
			<th align="right" style="width: 50%">Question 2:</th>
			<th style="width: 2%" />
			<th align="left"><textarea name="q2" value="Question 2" readonly="readonly" style="width: 50%">Question 2</textarea></th>

		</tr>
		</br>
		<tr>
			<th align="right">Answer :</th>
			<th style="width: 2%" />
			<th align="left"><select name="answer" id="select">

					<option value="Answer1">Answer1</option>
					<option value="Answer2">Answer2</option>
					<option value="Answer3">Answer3</option>
					<option value="Answer4">Answer4</option>
					<option value="Answer5">Answer5</option>
			</select></th>
		</tr>
		</br>
<tr>
			<th align="right" style="width: 50%">Question 3:</th>
			<th style="width: 2%" />
			<th align="left"><textarea name="q3" value="Question 3" readonly="readonly" style="width: 50%">Question 3</textarea></th>
		</tr>
		</br>
		<tr>
			<th align="right">Answer :</th>
			<th style="width: 2%" />
			<th align="left"><select name="answer" id="select">

					<option value="Answer1">Answer1</option>
					<option value="Answer2">Answer2</option>
					<option value="Answer3">Answer3</option>
					<option value="Answer4">Answer4</option>
					<option value="Answer5">Answer5</option>
			</select></th>
		</tr>
		</br>

	</table>
	</br>
	<table style="width: 100%">
		<tr>
			<th style="width: 50%">
				<center>
					<th align="left" style="width: 2%" />
					<input type="submit" value="Submit" method="post" />
			</th>
			</center>
			<th>
		</tr>
	</table>



	<hr>

</body>
</html>