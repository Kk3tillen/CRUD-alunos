<%@page import="model.Aluno"%>
<%@page import="model.Turma"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>	
	<form action="delete.jsp" method="get">
	
	 	
		 ID do aluno:
		 	<input type="number" id="id" name="id"/>	
		 	
		 <input type="submit"/>
		 
	</form>
		  
		 <br>
		 
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Turma</th>
			<th>IRA</th>
		</tr>
    
	 	<%
			for (Aluno a : Turma.alunos) {
				out.print("<tr>");
					out.print("<td>" + a.getId() + "</td>");
					out.print("<td>" + a.getNome() + "</td>");
					out.print("<td>" + a.getTurma() + "</td>");
					out.print("<td>" + a.getIra() + "</td>");
				out.print("</tr>");
			}
	 	%>
 	
 	</table>
		<br>
		<a href="index.jsp">Voltar</a>
		<br>
		<a href="listar.jsp">Listar alunos</a>
</body>
</html>