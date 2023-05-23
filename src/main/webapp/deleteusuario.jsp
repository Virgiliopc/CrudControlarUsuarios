<%@ page import="com.CrudControlarUsuarios.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.CrudControlarUsuarios.bean.Usuario"></jsp:useBean>
<jsp:setProperty property = "*" name="u"/>

<%
UsuarioDao.deletarUsuario(u);
response.sendRedirect("viewusuarios.jsp");
%>
