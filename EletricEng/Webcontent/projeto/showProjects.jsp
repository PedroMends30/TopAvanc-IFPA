<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.ProjetoDAO"%>
<%@ page import="model.Projeto"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projetos Cadastrados</title>
<style>
	table *{
		padding:5px;
	}
</style>
</head>
<body>
	<a href="criar-projeto.html"><input type="button" value="Novo Projeto"></a>
	<table border="1px solid black" style="border-collapse:collapse;">
		<thead>
			<th>Id Projeto</th>
			<th>Nome Proprietario</th>
			<th>Endereço</th>
			<th>Tipo</th>
			<th>Local da Instalação</th>
			<th>Potencia</th>
			<th>Data</th>
			<th>Preço Estimado</th>
			<th colspan="2">Editar</th>
		</thead>
		<%
		ArrayList<Projeto> resultados = new ArrayList<Projeto>(); 
		Projeto obj = null;
		ProjetoDAO dao = new ProjetoDAO();
		ResultSet res = dao.retornaProjetos();
		while(res.next()){
			obj = new Projeto();
			obj.setId_projeto(Integer.parseInt(res.getString(1)));
			obj.setNome_proprietario(res.getString(2));
			obj.setEndereco(res.getString(3));
			obj.setTipo(res.getString(4));
			obj.setLocal_instalacao(res.getString(5));
			obj.setData(res.getString(6));
			obj.setPotencia_sistema(Double.parseDouble(res.getString(7)));
			obj.setPreco_estimado(Double.parseDouble(res.getString(8)));
			resultados.add(obj);
		}
		for (Projeto resultado : resultados){%>
			<tr>
				<% for (int i = 1; i<9;i++) {%>
					<td><%= obj.getColumnByIndex(i) %></td>
				<%}%>
				<td><a href="changeProj.jsp?id_projeto=<%=resultado.getId_projeto()%>">Alterar</a></td>
				<td><a href="deleteProj.jsp?id_projeto=<%=resultado.getId_projeto()%>">Apagar</a></td>
			</tr>
		<%}%>
	</table>
</body>
</html>