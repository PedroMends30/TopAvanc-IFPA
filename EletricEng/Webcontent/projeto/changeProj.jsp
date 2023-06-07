<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.ProjetoDAO"%>
<%@ page import="model.Projeto"%>
<%@ page import="java.sql.ResultSet" %>
<% 
Projeto obj = null;
ProjetoDAO dao = new ProjetoDAO();
ResultSet res = dao.retornaProjeto(request.getParameter("id_projeto"));

res.next();

obj = new Projeto();
obj.setId_projeto(Integer.parseInt(res.getString(1)));
obj.setNome_proprietario(res.getString(2));
obj.setEndereco(res.getString(3));
obj.setTipo(res.getString(4));
obj.setLocal_instalacao(res.getString(5));
obj.setData(res.getString(6));
obj.setPotencia_sistema(Double.parseDouble(res.getString(7)));
obj.setPreco_estimado(Double.parseDouble(res.getString(8)));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1></h1>
	<form action="a.jsp" method="get">
		<label>Nome Proprietario</label>
		<input type="text" name="nomeProp" value="<%=obj.getColumnByIndex(2) %>"><br>
		<label>Endereço</label>
		<input type="text" value="<%=obj.getColumnByIndex(3) %>"><br>
		<label>Tipo de Sistema</label>
		<input type="text" value="<%=obj.getColumnByIndex(4) %>"><br>
		<label>Instalação</label>
		<input type="text" value="<%=obj.getColumnByIndex(5) %>"><br>
		<label>Data</label>
		<input type="text" value="<%=obj.getColumnByIndex(6) %>"><br>
		<label>Potencia do Sistema</label>
		<input type="text" value="<%=obj.getColumnByIndex(7) %>"><br>
		<label>Preco do Sistema</label>
		<input type="text" value="<%=obj.getColumnByIndex(8) %>"><br>
		<input type="submit">
	</form>
</body>
</html>