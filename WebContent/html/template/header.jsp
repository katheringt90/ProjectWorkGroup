<%@page import="beans.UsuarioBean"%>
<%@page import="util.Constant"%>

<% if(session.getAttribute(Constant.OBJ_USUARIO) != null){ %>
	<% // out.print(session.getAttribute("email")); %>
	<!-- < %=application.getContextPath() %>/Logout"> -->
<% }else{ %>

<% } %>

<%
	String mensaje = "";
	if(session.getAttribute("loginerror") != null){
 		mensaje = (String) session.getAttribute("loginerror");
%>
<div style="" class="alert alert-danger">
<!-- <button type="button" class="close" data-dismiss="alert">×</button> -->
	<strong><span class="glyphicon glyphicon-ban-circle" aria-hidden="true"></span> Mensaje:</strong> <%=mensaje%>.
</div>
<% 
	session.removeAttribute("loginerror");
 	}
%>


<!DOCTYPE html>
<html lang="en">
  <head>
  
  	<!-- http://themeslivepreview.com/amaretti-v1.1.4/ -->
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="<%=application.getContextPath() %>/img/favicon.ico">
    <title>USMP 2015</title>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/nanoscroller.css"/>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/theme-switcher.min.css"/>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/bootstrap-datetimepicker.min.css"/>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/select2/select2.min.css"/>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/bootstrap-slider.css"/>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
    
    </head>
    
  <body>
    <div class="am-wrapper">
    
    
<!--HEADER-->	
<nav class="navbar navbar-default navbar-fixed-top am-top-header" >
<div class="container-fluid">

  <div class="navbar-header" >
    <div class="page-title"><span>Form Elements</span></div><a href="#" class="am-toggle-left-sidebar navbar-toggle collapsed"><span class="icon-bar"><span></span><span></span><span></span></span></a><a href="index.php" class="navbar-brand"></a>
  </div>
  
  <!-- DESPLIEGA EL MENU DEL LADO IZQUIERDO  -->
  <% if(session.getAttribute(Constant.OBJ_USUARIO) != null){ %>
  	<a href="#" class="am-toggle-right-sidebar"><span class="icon s7-menu2"></span></a>
  <% }else{ %>
  
  <% } %>
  <!-- DESPLIEGA EL MENU DEL LADO IZQUIERDO  -->
  
  
  <a href="#" data-toggle="collapse" data-target="#am-navbar-collapse" class="am-toggle-top-header-menu collapsed"><span class="icon s7-angle-down"></span></a>
  
  
  <div id="am-navbar-collapse" class="collapse navbar-collapse">
  
  
  <!-- AVATAR ICONO IZQUIERDO  -->
    <ul class="nav navbar-nav navbar-right am-user-nav">
      <li class="dropdown">
      	<a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="dropdown-toggle">
      		<img src="<%=application.getContextPath() %>/img/avatar.png"><span class="user-name">Samantha Amaretti</span><span class="angle-down s7-angle-down"></span>
      	</a>
        <ul role="menu" class="dropdown-menu">
        
			<% if(session.getAttribute(Constant.OBJ_USUARIO) == null){ %>
					<li><a href="<%=application.getContextPath() %>/login">Login</a></li>
			<% }else{ %>
			
          		<% UsuarioBean usuario = (UsuarioBean) session.getAttribute(Constant.OBJ_USUARIO); %>
	          <li><a href="<%=application.getContextPath() %>/perfil"> <span class="icon s7-user"></span>Mi perfil</a></li>
	          <li><a href="<%=application.getContextPath() %>/configuracion"> <span class="icon s7-config"></span>Configuración</a></li>
	          <li><a href="#"> <span class="icon s7-help1"></span><% out.print(usuario.getRol()); %></a></li>
	          <li><a href="<%=application.getContextPath() %>/logout"> <span class="icon s7-power"></span>Cerrar sesión</a></li>
			<% } %>
        </ul>
      </li>
    </ul>
    <!-- AVATAR ICONO IZQUIERDO  -->
    
    
    <ul class="nav navbar-nav am-nav-right">
      <li><a href="<%=application.getContextPath() %>/inicio">Inicio</a></li>
      <li><a href="#">Nosotros</a></li>
      <li class="dropdown"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="dropdown-toggle">Gestionar <span class="angle-down s7-angle-down"></span></a>
        <ul role="menu" class="dropdown-menu">
          <li><a href="<%=application.getContextPath() %>/usuario-listar">Usuarios</a></li>
          <li><a href="<%=application.getContextPath() %>/producto-listar">Productos</a></li>
        </ul>
      </li>
      <li><a href="#">Soporte</a></li>
    </ul>
    
    
    
    
	<% if(session.getAttribute(Constant.OBJ_USUARIO) != null) { %>
    <ul class="nav navbar-nav navbar-right am-icons-nav">
      <li class="dropdown"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="dropdown-toggle"><span class="icon s7-comment"></span></a>
        <ul class="dropdown-menu am-messages">
          <li>
            <div class="title">Mensajes<span class="badge">3</span></div>
            <div class="list">
              <div class="am-scroller nano">
                <div class="content nano-content">
                  <ul>
                    <li class="active"><a href="#">
                        <div class="logo"><img src="<%=application.getContextPath() %>/img/avatar2.jpg"></div>
                        <div class="user-content"><span class="date">Octubre 25</span><span class="name">Jessica Caruso</span><span class="text-content">Pido que seas parte de la misma, para que podamos trabajar...</span></div></a></li>
                    <li><a href="#">
                        <div class="logo"><img src="<%=application.getContextPath() %>/img/avatar3.jpg"></div>
                        <div class="user-content"><span class="date">Octubre 18</span><span class="name">Joel King</span><span class="text-content"> Deseamos extender el software.</span></div></a></li>
                    <li><a href="#">
                        <div class="logo"><img src="<%=application.getContextPath() %>/img/avatar4.jpg"></div>
                        <div class="user-content"><span class="date">Noviembre 3</span><span class="name">Claire Sassu</span><span class="text-content"> Nosotros los ingenieros de un bloque dispuestos a unirse para crear un software...</span></div></a></li>
                    <li><a href="#">
                        <div class="logo"><img src="<%=application.getContextPath() %>/img/avatar5.jpg"></div>
                        <div class="user-content"><span class="date">Noviembre 2</span><span class="name">Emily Carter</span><span class="text-content"> Pido que seas parte de la misma, para que podamos trabajar...</span></div></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="footer"> <a href="#">Ver todos los mensajes</a></div>
          </li>
        </ul>
      </li>
      <li class="dropdown"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="dropdown-toggle"><span class="icon s7-bell"></span><span class="indicator"></span></a>
        <ul class="dropdown-menu am-notifications">
          <li>
            <div class="title">Notificaciones<span class="badge">3</span></div>
            <div class="list">
              <div class="am-scroller nano">
                <div class="content nano-content">
                  <ul>
                    <li class="active"><a href="#">
                        <div class="logo"><span class="icon s7-pin"></span></div>
                        <div class="user-content"><span class="circle"></span><span class="name">Katherin garcia</span><span class="text-content"> aceptado su invitación para unirse al equipo.</span><span class="date">hace 2 minutos</span></div></a></li>
                    <li><a href="#">
                        <div class="logo"><span class="icon s7-add-user"></span></div>
                        <div class="user-content"><span class="name">Joel King</span><span class="text-content"> ahora te está siguiendo</span><span class="date">hace 2 dias</span></div></a></li>
                    <li><a href="#">
                        <div class="logo"><span class="icon s7-gleam"></span></div>
                        <div class="user-content"><span class="name">Claire Sassu</span><span class="text-content"> está viendo su repositorio principal</span><span class="date">hace 2 dias</span></div></a></li>
                    <li><a href="#">
                        <div class="logo"><span class="icon s7-add-user"></span></div>
                        <div class="user-content"><span class="name">Emily Carter</span><span class="text-content"> ahora te está siguiendo</span><span class="date">hace 5 dias</span></div></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="footer"> <a href="#">Ver todas las notificaciones</a></div>
          </li>
        </ul>
      </li>
      <li class="dropdown"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="dropdown-toggle"><span class="icon s7-share"></span></a>
        <ul class="dropdown-menu am-connections">
          <li>
            <div class="title">Conexiones</div>
            <div class="list">
              <div class="content">
                <ul>
                  <li>
                    <div class="logo"><img src="<%=application.getContextPath() %>/img/github.png"></div>
                    <div class="field"><span>GitHub</span>
                      <div class="pull-right">
                        <div class="switch-button switch-button-sm">
                          <input type="checkbox" checked="" name="check1" id="switch1"><span>
                            <label for="switch1"></label></span>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="logo"><img src="<%=application.getContextPath() %>/img/bitbucket.png"></div>
                    <div class="field"><span>Bitbucket</span>
                      <div class="pull-right">
                        <div class="switch-button switch-button-sm">
                          <input type="checkbox" name="check2" id="switch2"><span>
                            <label for="switch2"></label></span>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="logo"><img src="<%=application.getContextPath() %>/img/slack.png"></div>
                    <div class="field"><span>Slack</span>
                      <div class="pull-right">
                        <div class="switch-button switch-button-sm">
                          <input type="checkbox" checked="" name="check3" id="switch3"><span>
                            <label for="switch3"></label></span>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="logo"><img src="<%=application.getContextPath() %>/img/dribbble.png"></div>
                    <div class="field"><span>Dribbble</span>
                      <div class="pull-right">
                        <div class="switch-button switch-button-sm">
                          <input type="checkbox" name="check4" id="switch4"><span>
                            <label for="switch4"> </label></span>
                        </div>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <div class="footer"> <a href="#">Ver todas las conexiones</a></div>
          </li>
        </ul>
      </li>
    </ul>
  <%  } %>
  
  
  
  
  </div>
</div>
</nav>
<!--HEADER-->	  





<%@ include file="../template/left_side_bar.jsp" %>






