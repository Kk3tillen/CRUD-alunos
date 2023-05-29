package model;

public class Aluno {
	private String nome, turma, ira;
	private int id;
	
	
	public Aluno() {
		this.nome = "";
		this.ira = "";
		this.turma = "";
	}
	
	public Aluno(String ira, String nome, String turma) {
		this.id = Turma.alunos.size()+1;
		this.ira = ira;
		this.nome = nome;
		this.turma = turma;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIra() {
		return ira;
	}

	public void setIra(String ira) {
		this.ira = ira;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTurma() {
		return turma;
	}

	public void setTurma(String turma) {
		this.turma = turma;
	}
	
}
