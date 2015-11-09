
<%@ include file="../template/header.jsp" %>

<%@page import="beans.UsuarioBean"%>
<%@page import="java.util.Vector"%>

<%
	String mensaje3 = "";
	if(session.getAttribute("mensaje") != null){
 		mensaje3 = (String) session.getAttribute("mensaje");
%>
    <div class="alert alert-success">
        <strong><span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Mensaje:</strong> <%=mensaje3%>.
    </div>
<% 
	session.removeAttribute("mensaje");
 	}
%>

<script type="text/javascript">
function confirm_delete() {
  return confirm('estas seguro?');
}
</script>



	<!--CONTENEDOR MAIN-->
	<div class="am-content"> 
	<div class="main-content" style="">
	
	 <div class="row">
	   <div class="col-md-12">
	     <div class="panel panel-default">
	       <div class="panel-heading">
	       	<div class="col-md-6">
	       		<h3><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Gestionar usuarios</h3>
	       	</div>
	         
	         <div class="col-md-6 text-right">
	         	<a href="<%=application.getContextPath() %>/usuario-agregar" type="button" class="btn btn-primary">Crear usuario</a>
       		</div>
	       </div>
	       
	       
	       <!--PANEL-BODY-->
	            <div class="panel-body">
	            
	<table id="example" class="display" cellspacing="0" width="100%" style="">
	       
	<thead>
	    <tr>
	        <th>Id</th>
	        <th>Nombre</th>
	        <th>Apellido</th>
	        <th>Email</th>
	        <th> - </th>
	    </tr>
	</thead>
	
	<tfoot>
	    <tr>
	        <th>Id</th>
	        <th>Nombre</th>
	        <th>Apellido</th>
	        <th>Email</th>
	        <th> - </th>
	    </tr>
	</tfoot>
	
	   <tbody>
	   
	<% Vector<UsuarioBean> VECTOR_LIST = (Vector)request.getAttribute("LISTAR_USUARIO"); %>
	<% 	for (int i =0; i< VECTOR_LIST.size(); i++){ %> 
	<tr>
		<td><%=VECTOR_LIST.get(i).getId() %></td>
	<td><%=VECTOR_LIST.get(i).getNombre() %></td>
	<td><%=VECTOR_LIST.get(i).getApellido() %></td>
	<td><%=VECTOR_LIST.get(i).getEmail() %></td>
		<th>
		<button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#modal-1">
		<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> active
		</button>
		</th>
	</tr>
	<% } %>
	
	    </tbody>
	</table>
	          
	          
          
          	</div>
        	<!--PANEL-BODY-->
	
	      	
	      </div>
	    </div>
	  </div>
	
	</div>
	</div>
	<!--CONTENEDOR MAIN-->
      






	
<%@ include file="../template/footer.jsp" %>