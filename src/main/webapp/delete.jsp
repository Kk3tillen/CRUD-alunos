<%@page import="model.Aluno"%>
<%@page import="model.Turma"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>

		<%
			String id = request.getParameter("id");

			 boolean alunoRemovido = false; 

			 if(id != null){
				int idAluno = Integer.parseInt(id);
				Aluno aluno = Turma.alunos.remove(idAluno-1);

				if(aluno != null){
					alunoRemovido = true;
				} 
			 }

		%>
		<h1> 
			<%
				if(alunoRemovido){
					out.println("Aluno Removido com Sucesso");
				} else {
					out.println("Erro ao remover o aluno");
				}
			%>

		</h1>

		<br>
		<a href="index.jsp">Voltar</a>
		<br>
		<a href="listarAlunos.jsp">Listar alunos</a>	
	</body>
</html>
