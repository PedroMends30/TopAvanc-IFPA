package util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Projeto;

public class TestaCon {
	public static void main(String[] args) throws SQLException {
		try {
			Conexao con = new Conexao();
			ResultSet r = con.executeQuery("SELECT * FROM `projetos`");
			ArrayList<Projeto> resultados = new ArrayList<Projeto>();
			Projeto obj = null;
			while(r.next()) {
				obj = new Projeto();
				obj.setId_projeto(Integer.parseInt(r.getString(1)));
				obj.setNome_proprietario(r.getString(2));
				obj.setEndereco(r.getString(3));
				obj.setTipo(r.getString(4));
				obj.setLocal_instalacao(r.getString(5));
				obj.setData(r.getString(6));
				obj.setPotencia_sistema(Double.parseDouble(r.getString(7)));
				obj.setPreco_estimado(Double.parseDouble(r.getString(8)));
				resultados.add(obj);
			}
			
			for (Projeto resultado: resultados ) {
				System.out.println("-----------------------");
				System.out.println(resultado.getNome_proprietario());
			}
		} catch (SQLException e) {
			System.out.println(e);
		}

	}
}
