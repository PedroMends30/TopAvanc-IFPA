package model;

public class Projeto {
	private int id_projeto;
	private String nome_proprietario;
	private String endereco;
	private String tipo;
	private String local_instalacao;
	private double potencia_sistema;
	private String data;
	private double preco_estimado;
	
	public Projeto() {
		
	}
	
	public Projeto(int id_projeto, String nome_proprietario, String endereco, String tipo, String local_instalacao,
			String data, double potencia_sistema, double preco_estimado) {
		super();
		this.id_projeto = id_projeto;
		this.nome_proprietario = nome_proprietario;
		this.endereco = endereco;
		this.tipo = tipo;
		this.local_instalacao = local_instalacao;
		this.data = data;
		this.potencia_sistema = potencia_sistema;
		this.preco_estimado = preco_estimado;
	}
	
	public int getId_projeto() {
		return id_projeto;
	}
	public void setId_projeto(int id_projeto) {
		this.id_projeto = id_projeto;
	}
	public String getNome_proprietario() {
		return nome_proprietario;
	}
	public void setNome_proprietario(String nome_proprietario) {
		this.nome_proprietario = nome_proprietario;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getLocal_instalacao() {
		return local_instalacao;
	}
	public void setLocal_instalacao(String local_instalacao) {
		this.local_instalacao = local_instalacao;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public double getPotencia_sistema() {
		return potencia_sistema;
	}
	public void setPotencia_sistema(double potencia_sistema) {
		this.potencia_sistema = potencia_sistema;
	}
	public double getPreco_estimado() {
		return preco_estimado;
	}
	public void setPreco_estimado(double preco_estimado) {
		this.preco_estimado = preco_estimado;
	}
	public String getColumnByIndex(int index) {
		if (index > 0 && index <=8) {
			switch (index) {
			case 1:
				return Integer.toString(this.getId_projeto());
			case 2:
				return this.getNome_proprietario();
			case 3:
				return this.getEndereco();
			case 4:
				return this.getTipo();
			case 5:
				return this.getLocal_instalacao();
			case 6:
				return Double.toString(this.getPotencia_sistema());
			case 7:
				return this.getData();
			case 8:
				return Double.toString(this.getPreco_estimado());
			}
		} else {
			return "Index out of range";
		}
		return Integer.toString(index);
	}
}
