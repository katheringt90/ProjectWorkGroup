
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
	<div class="main-content">
	
	 <div class="row">
	   <div class="col-md-6">
	     <div class="panel panel-default">
	       <div class="panel-heading">
	       		<h3><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Agregar usuario</h3>
	       </div>
	       
	       
	       <!--PANEL-BODY-->
	       <div class="panel-body">
	            
	            
	        
	        
<div class="panel panel-default">

<!-- 
                <div class="panel-heading">
                  <h3>Horizontal Form</h3>
                </div>
                 -->
                
                <div class="panel-body">
                
				<form 
				id="form"
				role="form"
				action="<%=application.getContextPath() %>/usuario-agregar"
				class="form-horizontal"
				method="post" >
                  
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">Nombre</label>
                      <div class="col-sm-10">
                        <input id="inputEmail3" name="nombre" type="text" placeholder="Nombre" class="form-control">
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label for="inputPassword3" class="col-sm-2 control-label">Apellido</label>
                      <div class="col-sm-10">
                        <input id="inputPassword3" name="apellido" type="text" placeholder="Apellido" class="form-control">
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label for="inputPassword3" class="col-sm-2 control-label">Email</label>
                      <div class="col-sm-10">
                        <input id="inputPassword3" name="email" type="email" placeholder="Email" class="form-control">
                      </div>
                    </div>
                   

                    
                    <div class="form-group">
                      <div class="col-sm-offset-2 col-sm-10">
                        <div class="spacer text-center">
                          <button type="submit" class="btn btn-space btn-primary">Crear</button>
                          <button class="btn btn-space btn-default">Cancel</button>
                        </div>
                      </div>
                    </div>
                    
                    
                  </form>
                </div>
              </div>
	        
	        
	        
	          
	          
          
          	</div>
        	<!--PANEL-BODY-->
	
	      	
	      </div>
	    </div>
	  </div>
	
	</div>
	</div>
	<!--CONTENEDOR MAIN-->
      






	
<%@ include file="../template/footer.jsp" %>
              
              
              
              
              
              
              
              
              
              
              