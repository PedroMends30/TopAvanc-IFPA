<%@ page import="dao.ProjetoDAO"%>
<%@ page import="model.Projeto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Projeto p = new Projeto();

boolean ok = false;
p.setNome_proprietario(request.getParameter("nome_proprietario"));
p.setEndereco(request.getParameter("endereco"));
p.setTipo(request.getParameter("tipo"));
p.setLocal_instalacao(request.getParameter("local_instalacao"));
p.setPotencia_sistema(request.getParameter("potencia_sistema").length()== 0 ? 0 : Double.parseDouble(request.getParameter("potencia_sistema")));
p.setData(request.getParameter("data"));
p.setPreco_estimado(request.getParameter("preco_estimado").length()== 0 ? 0 : Double.parseDouble(request.getParameter("preco_estimado")));

Exception a = null;

try {
ProjetoDAO pd = new ProjetoDAO();
ok = pd.inserirProjeto(p);
System.out.println("inserido");
} catch (Exception e){%>
	<%="Não foi possível inserir"%>
	a = e;
	System.out.println("erro");
<%}

if (ok) {
%>
<script type="text/javascript">
	alert("Projeto Cadastrado Com Sucesso!");
	window.location.href = "criar-projeto.html";
</script>
<%
} else {
%>
<script type="text/javascript">
	alert("Erro ao cadastrar projeto");
	window.location.href = "criar-projeto.html";
</script>
<%
}
%>