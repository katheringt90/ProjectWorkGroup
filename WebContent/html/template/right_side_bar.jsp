<%@page import="beans.UsuarioBean"%>
<%@page import="util.Constant"%>

<nav class="am-right-sidebar">
        <div class="sb-content">
          <div class="user-info">
          
          <img src="<%=application.getContextPath() %>/img/avatar.png">
          
          <span class="name">
          <% if(session.getAttribute(Constant.OBJ_USUARIO) != null){ %>
          <% 
          UsuarioBean usuario = (UsuarioBean) session.getAttribute(Constant.OBJ_USUARIO);
          out.print(usuario.getNombre() + " " + usuario.getApellido());
          %>
		  <% }else{ %>
		  	TEST
		  <% } %>
          <span class="status"></span>
          </span>
          
          <span class="position">Ing Sistemas</span></div>
          <div class="tab-navigation">
            <ul role="tablist" class="nav nav-tabs nav-justified">
              <li role="presentation" class="active"><a href="#tab1" aria-controls="home" role="tab" data-toggle="tab"> <span class="icon s7-smile"></span></a></li>
              <li role="presentation"><a href="#tab2" aria-controls="profile" role="tab" data-toggle="tab"> <span class="icon s7-chat"></span></a></li>
              <li role="presentation"><a href="#tab3" aria-controls="messages" role="tab" data-toggle="tab"> <span class="icon s7-help2"></span></a></li>
              <li role="presentation"><a href="#tab4" aria-controls="settings" role="tab" data-toggle="tab"> <span class="icon s7-ticket"></span></a></li>
            </ul>
          </div>
          <div class="tab-panel">
            <div class="tab-content">
              <div id="tab1" role="tabpanel" class="tab-pane announcement active am-scroller nano has-scrollbar">
                <div class="nano-content" style="right: -15px;">
                  <div class="content">
                    <h2>Anuncio</h2>
                    <ul>
                      <li>
                        <div class="icon"><span class="icon s7-sun"></span></div>
                        <div class="content"><a href="#">Día feliz</a><span>Suspendisse nec leo tortor rhoncus tincidunt. Duis sit amet rutrum elit.</span></div>
                      </li>
                      <li>
                        <div class="icon"><span class="icon s7-gift"></span></div>
                        <div class="content"><a href="#">Enhorabuena Desarrolladores</a><span>Suspendisse nec leo tortor rhoncus tincidunt. Duis sit amet rutrum elit.</span></div>
                      </li>
                      <li>
                        <div class="icon"><span class="icon s7-star"></span></div>
                        <div class="content"><a href="#">Puntuación más alta</a><span>Suspendisse nec leo tortor rhoncus tincidunt. Duis sit amet rutrum elit.</span></div>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="search">
                  <input type="text" placeholder="Buscar..." name="q"><span class="s7-search"></span>
                </div>
              <div class="nano-pane" style="display: block;"><div class="nano-slider" style="height: 214px; transform: translate(0px, 0px);"></div></div></div>
              <div id="tab2" role="tabpanel" class="tab-pane chat">
                <div class="chat-contacts">
                  <div class="chat-sections">
                    <div class="am-scroller nano has-scrollbar">
                      <div class="content nano-content" style="right: -15px;">
                        <h2>Recent</h2>
                        <div class="recent">
                          <div class="user"><a href="#"><img src="<%=application.getContextPath() %>/img/avatar4.jpg">
                              <div class="user-data"><span class="status away"></span><span class="name">Juan Perexs</span><span class="message">Can you share the...</span></div></a></div>
                          <div class="user"><a href="#"><img src="<%=application.getContextPath() %>/img/avatar7.jpg">
                              <div class="user-data"><span class="status"></span><span class="name">Michael jackson</span><span class="message">I confirmed the info.</span></div></a></div>
                          <div class="user"><a href="#"><img src="<%=application.getContextPath() %>/img/avatar3.jpg">
                              <div class="user-data"><span class="status offline"></span><span class="name">Pollo gordo</span><span class="message">Ready for the meeti...</span></div></a></div>
                        </div>
                        <h2>Contacts</h2>
                        <div class="contact">
                          <div class="user"><a href="#"><img src="<%=application.getContextPath() %>/img/avatar6.jpg">
                              <div class="user-data2"><span class="status"></span><span class="name">Persona 1</span></div></a></div>
                          <div class="user"><a href="#"><img src="<%=application.getContextPath() %>/img/avatar7.jpg">
                              <div class="user-data2"><span class="status"></span><span class="name">Persona 2</span></div></a></div>
                          <div class="user"><a href="#"><img src="<%=application.getContextPath() %>/img/avatar8.jpg">
                              <div class="user-data2"><span class="status offline"></span><span class="name">Persona 3</span></div></a></div>
                        </div>
                      </div>
                    <div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 20px; transform: translate(0px, 0px);"></div></div></div>
                  </div>
                  <div class="search">
                    <input type="text" placeholder="Search..." name="q"><span class="s7-search"></span>
                  </div>
                </div>
                <div class="chat-window">
                  <div class="title">
                    <div class="user"><img src="<%=application.getContextPath() %>/img/avatar7.jpg">
                      <h2>Michael jackson</h2><span>Activo hace 1h</span>
                    </div><span class="icon return s7-angle-left"></span>
                  </div>
                  <div class="chat-messages">
                    <div class="am-scroller nano has-scrollbar">
                      <div class="content nano-content" style="right: -15px;">
                        <ul>
                          <li class="friend">
                            <div class="msg">Hola</div>
                          </li>
                          <li class="self">
                            <div class="msg">Como estas?</div>
                          </li>
                          <li class="friend">
                            <div class="msg">Bien, necesito soporte con mi pc</div>
                          </li>
                          <li class="self">
                            <div class="msg">claro, solo dime que pasa con esa chatarra?</div>
                          </li>
                          <li class="friend">
                            <div class="msg">No lo se, solo se apago</div>
                          </li>
                        </ul>
                      </div>
                    <div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 20px; transform: translate(0px, 0px);"></div></div></div>
                  </div>
                  <div class="chat-input">
                    <div class="input-wrapper"><span class="photo s7-camera"></span>
                      <input type="text" placeholder="Message..." name="q" autocomplete="off"><span class="send-msg s7-paper-plane"></span>
                    </div>
                  </div>
                </div>
              </div>
              <div id="tab3" role="tabpanel" class="tab-pane faqs am-scroller nano has-scrollbar">
                <div class="nano-content" style="right: -15px;">
                  <div class="content">
                    <h2>FAQs</h2>
                    <div id="accordion" role="tablist" aria-multiselectable="true" class="panel-group accordion">
                      <div class="panel">
                        <div role="tab" class="panel-heading">
                          <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#faq1" aria-expanded="true" aria-controls="collapseOne">
                              <div class="icon"><span class="s7-angle-down"></span></div><span class="title">Bajo Error 352</span></a></h4>
                        </div>
                        <div id="faq1" role="tabpanel" aria-labelledby="headingOne" class="panel-collapse collapse in">
                          <div class="panel-body">Suspendisse nec leo tortor rhoncus tincidunt. Duis sit amet rutrum elit.</div>
                        </div>
                      </div>
                      <div class="panel">
                        <div role="tab" class="panel-heading">
                          <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#faq2" aria-expanded="false" aria-controls="collapseTwo" class="collapsed">
                              <div class="icon"><span class="s7-angle-down"></span></div><span class="title">Plataforma de Falla</span></a></h4>
                        </div>
                        <div id="faq2" role="tabpanel" aria-labelledby="headingTwo" class="panel-collapse collapse">
                          <div class="panel-body">Suspendisse nec leo tortor rhoncus tincidunt. Duis sit amet rutrum elit.</div>
                        </div>
                      </div>
                      <div class="panel">
                        <div role="tab" class="panel-heading">
                          <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#faq3" aria-expanded="false" aria-controls="collapseThree" class="collapsed">
                              <div class="icon"><span class="s7-angle-down"></span></div><span class="title">Error 404</span></a></h4>
                        </div>
                        <div id="faq3" role="tabpanel" aria-labelledby="headingThree" class="panel-collapse collapse">
                          <div class="panel-body">Suspendisse nec leo tortor rhoncus tincidunt. Duis sit amet rutrum elit.</div>
                        </div>
                      </div>
                      <div class="panel">
                        <div role="tab" class="panel-heading">
                          <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#faq4" aria-expanded="false" aria-controls="collapseThree" class="collapsed">
                              <div class="icon"><span class="s7-angle-down"></span></div><span class="title">Nuevo workstation</span></a></h4>
                        </div>
                        <div id="faq4" role="tabpanel" aria-labelledby="headingThree" class="panel-collapse collapse">
                          <div class="panel-body">Suspendisse nec leo tortor rhoncus tincidunt. Duis sit amet rutrum elit.</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="search">
                  <input type="text" placeholder="Buscar..." name="q"><span class="s7-search"></span>
                </div>
              <div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 20px; transform: translate(0px, 0px);"></div></div></div>
              <div id="tab4" role="tabpanel" class="tab-pane ticket am-scroller nano has-scrollbar">
                <div class="nano-content" style="right: -15px;">
                  <div class="content">
                    <h2>Nuevo Ticket</h2>
                    <form>
                      <div class="form-group send-ticket">
                        <input type="text" placeholder="Titulo" class="form-control">
                      </div>
                      <div class="form-group send-ticket">
                        <textarea rows="3" placeholder="Escribir aqui..." class="form-control"></textarea>
                      </div>
                      <button type="submit" class="btn btn-primary btn-lg">Crear Ticket</button>
                    </form>
                  </div>
                </div>
              <div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 20px; transform: translate(0px, 0px);"></div></div></div>
            </div>
          </div>
        </div>
      </nav>
      
      
</div>






