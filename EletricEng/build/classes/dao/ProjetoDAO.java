package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.Projeto;
import util.Conexao;

public class ProjetoDAO {
	public boolean inserirProjeto(Projeto p) {
		Conexao con = null;
		
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO `projetos` "
					+"(`nome_proprietario`, `endereco`,"
					+" `tipo`, `local_instalacao`, `data`, `potencia_sistema`, "
					+"`preco_estimado`) "
					+"VALUES ('"+p.getNome_proprietario()+"', '"+p.getEndereco()+"',"
					+" '"+p.getTipo()+"', '"+p.getLocal_instalacao()+"', '"+p.getData()+"',"
					+ " '"+p.getPotencia_sistema()+"', '"+p.getPreco_estimado()+"');");
			return true;
		}catch(SQLException e){
			return false;
		}
		
	}
	public ResultSet retornaProjetos() {
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet resultados = con.executeQuery("SELECT * FROM `projetos`");
			return resultados;
		}catch(SQLException e){
			ResultSet vazio = null;
			return vazio;
		}
	}
	
	public ResultSet retornaProjeto(int index) {
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet resultados = con.executeQuery("SELECT * FROM `projetos` WHERE id_projeto = "+Integer.toString(index));
			return resultados;
		}catch(SQLException e){
			ResultSet vazio = null;
			return vazio;
		}
	}
	
	public ResultSet retornaProjeto(String index) {
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet resultados = con.executeQuery("SELECT * FROM `projetos` WHERE id_projeto = "+index);
			return resultados;
		}catch(SQLException e){
			ResultSet vazio = null;
			return vazio;
		}
	}
	
	public boolean apagaProjeto(int id) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("DELETE FROM projetos WHERE id_projeto = "+id);
			return true;
		}catch(Exception e){
			return false;
		}
	}
}
