<%@ include file="../template/header.jsp" %>

<%@page import="beans.ProductoBean"%>
<%@page import="util.Constant"%>
<%@page import="java.util.Vector"%>

<script type="text/javascript">
function confirm_delete() {
  return confirm('estas seguro?');
}
</script>



	<!--CONTENEDOR MAIN-->
	<div class="am-content"> 
	<div class="main-content" style="">
	
	
<%
	String mensaje3 = "";
	if(session.getAttribute(Constant.MESSAGE) != null){
 		mensaje3 = (String) session.getAttribute(Constant.MESSAGE);
%>
    <div class="alert alert-success">
        <strong><span class="glyphicon glyphicon-alert" aria-hidden="true"></span> Mensaje:</strong> <%=mensaje3%>.
    </div>
<% 
	session.removeAttribute(Constant.MESSAGE);
 	}
%>
	
	
	
	 <div class="row">
	   <div class="col-md-12">
	     <div class="panel panel-default">
	       <div class="panel-heading">
	       	<div class="col-md-6">
	       		<h3><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Gestionar productos</h3>
	       	</div>
	         
	         <div class="col-md-6 text-right">
	         	<a href="<%=application.getContextPath() %>/producto-agregar" type="button" class="btn btn-primary">Agregar producto</a>
       		</div>
	       </div>

	       <!--PANEL-BODY-->
	            <div class="panel-body">

	<table id="example" class="display" cellspacing="0" width="100%" style="">
	       
	<thead>
	    <tr>
	        <th>Id</th>
	        <th>Nombre</th>
	        <th>Descripcion</th>
	        <th> - </th>
	    </tr>
	</thead>
	
	<tfoot>
	    <tr>
	        <th>Id</th>
	        <th>Nombre</th>
	        <th>Descripcion</th>
	        <th> - </th>
	    </tr>
	</tfoot>
	
	   <tbody>
	   
	<% Vector<ProductoBean> VECTOR_LIST = (Vector) request.getAttribute(Constant.LISTA_OBJECT); %>
	<% 	for (int i =0; i< VECTOR_LIST.size(); i++){ %> 
	<tr>
		<td><%=VECTOR_LIST.get(i).getId() %></td>
		<td><%=VECTOR_LIST.get(i).getNombre() %></td>
		<td><%=VECTOR_LIST.get(i).getDescripcion() %></td>
		<th>
		<button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#modal-1">
		<span class="glyphicon glyphicon-link" aria-hidden="true"></span> active
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