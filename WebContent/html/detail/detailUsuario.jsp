
<%@page import="beans.UsuarioBean"%>

<%@page import="java.util.Vector"%>

<%
	String id = "";
	String nombre = "";
	String apellido = "";
	String email = "";

	UsuarioBean USUARIO = (UsuarioBean)request.getAttribute("USUARIO");

 	if(USUARIO != null){
 		id = USUARIO.getId();
 		nombre = USUARIO.getNombre();
 		email = USUARIO.getEmail();
 	}
%>

<h2>Usuario Detail</h2>
