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
<%
 	String id = request.getParameter("id");
	Aluno aluno = new Aluno();

	if(id != null){
		int idAluno = Integer.parseInt(id) - 1;
		
		aluno = Turma.alunos.get(idAluno);
	}

%>
<body>
	<h1>Cadastrar aluno</h1>
	<form action="create.jsp" method="get">
	
			Nome
			<input type="text" name="nome" value="<%= aluno.getNome() %>">
			
			Turma
			<input type="text" name="turma" value="<%= aluno.getTurma() %>">
			
			IRA
			<input type="number" name="ira" value="<%= aluno.getIra() %>">
			
			ID
			<input type="number" name="id" value="<%= aluno.getId() %>" >
		
		<input type="submit" value="Criar">
	</form>
	
	<a href ="listarAlunos.jsp">Listar Alunos</a> <br>
	<a href = "index.jsp">Tela Inicial</a>
	
</body>
</html>