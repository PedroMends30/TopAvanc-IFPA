<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.ProjetoDAO"%>
<% 
	ProjetoDAO dao = new ProjetoDAO();
	boolean res = false;
	try {
		res = dao.apagaProjeto(Integer.parseInt(request.getParameter("id_projeto")));
	}catch (Exception e){
		%><h1>Nenhum Parâmetro Passado</h1><%
	}

	if (res){
		%>
		<script type="text/javascript">
			window.location.href = "showProjects.jsp";
			alert("Projeto Apagado Com Sucesso!");
		</script>
		<%
		} else {
		%>
		<script type="text/javascript">
			window.location.href = "showProjects.jsp";
			alert("Erro ao apagar projeto");
		</script>
		<%
		}
%>