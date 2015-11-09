
<%@page import="beans.UsuarioBean"%>

<%

	String id = "";
	String nombre = "";
	String apellido = "";
	String email = "";
	String password = "";

	UsuarioBean USUARIO = (UsuarioBean)request.getAttribute("USUARIO");

 	if(USUARIO != null){
 		id = USUARIO.getId();
 		nombre = USUARIO.getNombre();
 		apellido = USUARIO.getApellido();
 		email = USUARIO.getEmail();
 		password = USUARIO.getPassword();

 	}
%>


<!--=======content================================-->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

<%
	String mensaje3 = "";
	if(session.getAttribute("mensaje") != null){
 		mensaje3 = (String) session.getAttribute("mensaje");
%>
    <div class="alert alert-success">
        <strong>Mensaje:</strong> <%=mensaje3%>.
    </div>
<% 
	session.removeAttribute("mensaje");
 	}
%>



<h2><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Editar Usuario</h2>

<div class="well well-lg">



<form 
id="form"
role="form"
action="<%=application.getContextPath() %>/UsuarioEditar"
method="post"
>

    <input name="id" value="<%=id %>" type="hidden">
 


  <div class="form-group">
    <label for="exampleInputPassword1">Nombre</label>
    <input name="nombre" value="<%=nombre %>" type="text" class="form-control" id="exampleInputPassword1" placeholder="Nombre" required>
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Apellido</label>
    <input name="apellido" value="<%=apellido %>" type="text" class="form-control" id="exampleInputPassword1" placeholder="Apellido" required>
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Email</label>
    <input name="email" value="<%=email %>" type="email" class="form-control" id="exampleInputPassword1" placeholder="Email" required>
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Contraseña</label>
    <input name="password" pattern=".{5,10}" value="<%=password %>" type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña (minimo 5 caracteres)" required>
  </div>
  
  
  <button type="submit" class=" btn btn-success">Enviar</button>
</form>



</div>
</div>
<!--=======content================================-->
