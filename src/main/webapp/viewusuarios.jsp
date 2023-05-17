<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visualização de Usuários</title>
</head>
<body>
	<%@ page import="com.ControlarUsuarios.dao.UsuarioDao, com.ControlarUsuarios.bean.*, java.util.* " %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	
	<h1>Listagem de Usuários</h1>
	
	<%
	List<Usuario> list = UsuarioDao.getAllUsuarios();
	request.setAttribute("list", list);
	%>
	
	<table>
		<tr><th>ID</th><th>Name</th><th>Password</th><th>E-mail</th><th>Sexo</th><th>País</th></tr>
		<c:forEach items="${list}" var="usuario">
			<tr>
				<td>${usuario.getId()}</td>
				<td>${usuario.getName()}</td>
				<td>${usuario.getPassword()}</td>
				<td>${usuario.getSexo()}</td>
				<td>${usuario.getPais()}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>