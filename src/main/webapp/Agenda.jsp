<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="imagens/iconTel.png">
<link rel="stylesheet" href="./styles.css">
<title>Agenda de Contatos</title>
</head>
<body>
	<h1>Agenda de contatos</h1>
	<table class="table-style">
		<thead> 
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Fone</th>
				<th>E-mail</th>
				<th>Editar</th>
				<th>Excluir</th>
			</tr>
		</thead>
		<tbody>
			<% for (int i = 0; i < lista.size(); i++) { %>
				<tr> 
					<td><%=lista.get(i).getIdcon()%></td> 
					<td><%=lista.get(i).getNome()%></td>
					<td><%=lista.get(i).getFone()%></td>
					<td><%=lista.get(i).getEmail()%></td>
					<td><a href="select?idcon=<%=lista.get(i).getIdcon()%>"
					class="Botao2">Editar</a></td>
					<td><a href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)" class="Botao3">Excluir</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
	<a href="novo.html" class="Botao">Novo Contato</a>
	<a href="report" class="Botao3">Relatório</a>
	<script src="script/Confirmador.js"></script>
</body>
</html>