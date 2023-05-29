<%@page import="model.Turma"%>
<%@page import="model.Aluno"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Turma</th>
			<th>IRA</th>
			<th>opções</th>
		</tr>
    
 	<%
		for (Aluno a : Turma.alunos) {
			out.print("<tr>");
				out.print("<td>" + a.getId() + "</td>");
				out.print("<td>" + a.getNome() + "</td>");
				out.print("<td>" + a.getTurma() + "</td>");
				out.print("<td>" + a.getIra() + "</td>");
				out.print("<td> <a href ='adicionarAluno.jsp?id=" + a.getId() + "'>Atualizar</a></td>");
			out.print("</tr>");
		}
 	%>
 	
 	</table>
 	
 	<a href ="index.jsp">Voltar</a> <br>
</body>
</html>