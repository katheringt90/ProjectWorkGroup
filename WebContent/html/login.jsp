<%@page import="util.Constant"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="<%=application.getContextPath() %>/img/favicon.ico">
    <title>USMP</title>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/nanoscroller.css"/><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/theme-switcher.min.css"/>
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
    </head>
  
  
  
  <body class="am-splash-screen">
    <div class="am-wrapper am-login">
      <div class="am-content">
        <div class="main-content">
          <div class="login-container">
            <div class="panel panel-default">

              <div class="panel-heading"><img src="<%=application.getContextPath() %>/img/logo.png" alt="logo" width="150px" height="39px" class="logo-img">
              <span>Porfavor ingrese sus credenciales.</span>
              </div>
              
				<%
					String mensaje3 = "";
					if(session.getAttribute(Constant.MESSAGE) != null){
				 		mensaje3 = (String) session.getAttribute(Constant.MESSAGE);
				%>
				    <div class="alert alert-danger">
				        <span class="glyphicon glyphicon-alert" aria-hidden="true"></span> &nbsp;
				        <strong>Mensaje:</strong> <%=mensaje3%>.
				    </div>
				<% 
					session.removeAttribute("mensaje");
				 	}
				%>
              
              <div class="panel-body">
              
				<form 
				id="form"
				role="form"
				action="<%=application.getContextPath() %>/login"
				class="form-horizontal"
				method="post" >
              
                  <div class="login-form">
                    <div class="form-group">
                      <div class="input-group"><span class="input-group-addon"><i class="icon s7-user"></i></span>
                        <input id="username" name="username" type="text" placeholder="Username" required="required" class="form-control">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="input-group"><span class="input-group-addon"><i class="icon s7-lock"></i></span>
                        <input id="password" name="password" type="password" placeholder="Password" required="required" class="form-control">
                      </div>
                    </div>
                    <div class="form-group login-submit">
                      <button data-dismiss="modal" type="submit" class="btn btn-primary btn-lg">Login</button>
                    </div>
                    <div class="form-group footer row">
                      <div class="col-xs-6"><a href="#">Olvido su contraseña?</a></div>
                      <div class="col-xs-6 remember">
                        <label for="remember">Recordarme Me</label>
                        <div class="am-checkbox">
                          <input type="checkbox" id="remember">
                          <label for="remember"></label>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    
    
    <script src="<%=application.getContextPath() %>/js/jquery.min.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/jquery.nanoscroller.min.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/main.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/theme-switcher.min.js" type="text/javascript"></script>
    
    <script type="text/javascript">
      $(document).ready(function(){
      	//initialize the javascript
      	App.init();
      });
      
    </script>
    <script type="text/javascript">
      $(document).ready(function(){
      	App.livePreview();
      });
      
    </script>
    
    <!-- 
    <script type="text/javascript">
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      
      ga('create', 'UA-68396117-1', 'auto');
      ga('send', 'pageview');

    </script>
     -->
    
    
    <div class="ft_theme_switcher ocult">
      <div class="toggle"><i class="icon s7-settings"></i></div>
      <div class="desc">
        <h3>Escoger tema</h3>
        <p>Seleccione una combinación de colores.</p>
      </div>
      <div class="style_list">
        <div class="style">
          <div class="colors">
            <div style="background: #EF6262;" class="color"></div>
            <div style="background: #95d9f0;" class="color"></div>
            <div style="background: #ffdc7a;" class="color"></div>
            <div style="background: #7a98bf;" class="color"></div>
            <div style="background: #cccccc;" class="color"></div>
            <div class="name"> Default</div>
          </div><a href="?theme=default"></a>
        </div>
        <div class="style">
          <div class="colors">
            <div style="background: #7F64B5;" class="color"></div>
            <div style="background: #65CEEC;" class="color"></div>
            <div style="background: #ffdc7a;" class="color"></div>
            <div style="background: #45D8C2;" class="color"></div>
            <div style="background: #e0e0e0;" class="color"></div>
            <div class="name"> Twilight</div>
          </div><a href="?theme=twilight"></a>
        </div>
        <div class="style">
          <div class="colors">
            <div style="background: #4e91ff;" class="color"></div>
            <div style="background: #f55244;" class="color"></div>
            <div style="background: #FBBF22;" class="color"></div>
            <div style="background: #49AD70;" class="color"></div>
            <div style="background: #DFDFDF;" class="color"></div>
            <div class="name"> Google</div>
          </div><a href="?theme=google"></a>
        </div>
        <div class="style">
          <div class="colors">
            <div style="background: #f7c954;" class="color"></div>
            <div style="background: #88ca92;" class="color"></div>
            <div style="background: #7fcff5;" class="color"></div>
            <div style="background: #8B8CCC;" class="color"></div>
            <div style="background: #CCCCCC;" class="color"></div>
            <div class="name"> Sunrise</div>
          </div><a href="?theme=sunrise"></a>
        </div>
        <div class="style">
          <div class="colors">
            <div style="background: #6bc3b0;" class="color"></div>
            <div style="background: #FFE088;" class="color"></div>
            <div style="background: #bda5d7;" class="color"></div>
            <div style="background: #FF7FA0;" class="color"></div>
            <div style="background: #dfdfdf;" class="color"></div>
            <div class="name">Cake</div>
          </div><a href="?theme=cake"></a>
        </div>
      </div>
    </div>
  </body>
</html>