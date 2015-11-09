
<%@ include file="template/header.jsp" %>

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

<style>
	.carousel-inner > .item > img {
    	margin: 0 auto;
	}
	
	.page-head{
		position:absolute !important;
		z-index: 1;
		background-color: #910128;
		color: white;
	}
</style>
        
        

	<!--CONTENEDOR MAIN-->
<div class="am-content">

        <!-- MAIN CONTENT -->
        <div class="main-content">
        
        
        <div class="page-head">
          <h2><span class="glyphicon glyphicon-equalizer" aria-hidden="true"></span> SIGEPECO</h2>
          <h4>Sistema gestion de pedidos de compras y mantenimiento</h4>
        </div>
        
        
    <div id="carousel-example-captions" class="carousel slide" data-ride="carousel" data-interval="1500">
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-captions" data-slide-to="0" class=""></li>
        <li data-target="#carousel-example-captions" data-slide-to="1" class=""></li>
        <li data-target="#carousel-example-captions" data-slide-to="2" class="active"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item">
          <img data-src="" alt="" src="<%=application.getContextPath() %>/img/image_01.jpg" data-holder-rendered="true" style="min-height: 50%">
          <div class="carousel-caption">
            <h3>First slide label</h3>
            <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
          </div>
        </div>
        <div class="item">
          <img data-src="" alt="" src="<%=application.getContextPath() %>/img/image_02.jpg" data-holder-rendered="true" style="min-height: 50%">
          <div class="carousel-caption">
            <h3>Second slide label</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          </div>
        </div>
        <div class="item active">
          <img data-src="" alt="" src="<%=application.getContextPath() %>/img/image_03.jpg" data-holder-rendered="true" style="min-height: 50%">
          <div class="carousel-caption">
            <h3>Third slide label</h3>
            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#carousel-example-captions" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-captions" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
          
        </div>
        <!-- MAIN CONTENT -->
        
      </div>
	<!--CONTENEDOR MAIN-->
      

<%@ include file="template/footer.jsp" %>