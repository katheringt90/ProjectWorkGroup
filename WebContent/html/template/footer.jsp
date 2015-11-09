
<%@ include file="../template/right_side_bar.jsp" %>

<script src="<%=application.getContextPath() %>/js/jquery.1.11.1.min.js" type="text/javascript"></script>
    
    <script src="<%=application.getContextPath() %>/js/jquery.nanoscroller.min.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/main.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/theme-switcher.min.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/jquery-ui.min.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/jquery.nestable.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/moment.min.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/select2/select2.min.js" type="text/javascript"></script>
    <script src="<%=application.getContextPath() %>/js/bootstrap-slider.js" type="text/javascript"></script>
    
    <!--DATABASES-->
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/datatable/jquery.dataTables.min.css">
    <script type="text/javascript" language="javascript" src="<%=application.getContextPath() %>/js/datatable/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable();
		} );
    </script>
    <!--DATABASES-->
    
    
    <script type="text/javascript">
      $(document).ready(function(){
      	//initialize the javascript
      	App.init();
      	App.formElements();
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