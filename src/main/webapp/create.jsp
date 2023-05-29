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
		String nome = request.getParameter("nome");
		String turma = request.getParameter("turma");
		String ira = request.getParameter("ira");
		String id = request.getParameter("id");
		
		boolean sucesso = true;
		boolean atualizar = false;
		
		int idAluno = Integer.parseInt(id);
		if(idAluno != 0){
			Aluno aluno = Turma.alunos.get(idAluno-1);
			
			aluno.setNome(nome);
			aluno.setTurma(turma);
			aluno.setIra(ira);
			atualizar = true;
		} else {
			sucesso = Turma.alunos.add(new Aluno(ira, nome, turma));
		}
		
	%>
		
	<h1>
		<%=sucesso ? "Sucesso" : "Erro"%> 
		<%=atualizar ? "ao atualizar o aluno" : "ao criar o aluno"%> 
		
	</h1>
		
	<a href="index.jsp">início</a>
	
</body>

</html>