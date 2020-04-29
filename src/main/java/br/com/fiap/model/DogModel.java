package br.com.fiap.model;

import javax.validation.constraints.Min;
import javax.validation.constraints.Size;



public class DogModel {

	private Long id;
	private String nomeDono;
	private String cpf;
	private String nome;
	private String raca;

	private int idade;
	private String historia;
	
	public DogModel() {
		
	}

	public DogModel(Long id, String nomeDono, String cpf, String nome, String raca, int idade, String historia) {
		this.id = id;
		this.nomeDono = nomeDono;
		this.cpf = cpf;
		this.nome = nome;
		this.raca = raca;
		this.idade = idade;
		this.historia = historia;
	}
	
	
	public long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Size(min = 2, max = 40, message = "Nome deve ter no mínimo 2 e no máximo 40 caracteres")
	public String getNomeDono() {
		return nomeDono;
	}

	public void setNomeDono(String nomeDono) {
		this.nomeDono = nomeDono;
	}
	
	@Size(min = 11, max = 11, message = "CPF deve ter 11 dígitos, sem pontos ou hífen")
	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	
	@Size(min = 2, max = 40, message = "Nome do cachorro deve ter no mínimo 2 e no máximo 40 caracteres")
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Size(min = 2, max = 20, message = "Raça deve ter no mínimo 2 e no máximo 20 caracteres")
	public String getRaca() {
		return raca;
	}

	public void setRaca(String raca) {
		this.raca = raca;
	}
	
	@Min(value=1, message="A idade mínima deve ser 1")
	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}
	
	@Size(min = 1, max = 400, message = "Historia deve ter no mínimo 1 e no máximo 400 caracteres")
	public String getHistoria() {
		return historia;
	}

	public void setHistoria(String historia) {
		this.historia = historia;
	}

}
