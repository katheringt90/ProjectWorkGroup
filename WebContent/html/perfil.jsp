
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




	<!--CONTENEDOR MAIN-->
	<div class="am-content"> 
<div class="main-content">
<div class="user-profile">
            <div class="user-display">
              <div class="photo"><img src="<%=application.getContextPath() %>/img/profile.jpg"></div>
              <div class="bottom">
                <div class="user-avatar"><span class="status"></span><img src="<%=application.getContextPath() %>/img/foto_1.jpg"></div>
                <div class="user-info">
                  <h4>Katherin garcia</h4><span>Soy un desarrollador web y diseñador con sede en Lima - Peru, me gusta leer libros, la buena música y la naturaleza.</span>
                </div>
              </div>
            </div>
            
            <div class="row">
              <div class="col-md-4 col-sm-12">
                <div class="info-block panel panel-default">
                  <div class="panel-heading">
                    <h4>About me</h4>
                  </div>
                  <div class="panel-body"><span class="description">Soy un desarrollador web y diseñador con sede en Lima - Peru, me gusta leer libros, la buena música y la naturaleza.</span>
                    <table class="no-border no-strip skills">
                      <tbody class="no-border-x no-border-y">
                        <tr>
                          <td class="item">Ocupacion:<span class="icon s7-portfolio"></span></td>
                          <td>Desarrollador y diseñador</td>
                        </tr>
                        <tr>
                          <td class="item">Birthday:<span class="icon s7-gift"></span></td>
                          <td>16 Enero 1990</td>
                        </tr>
                        <tr>
                          <td class="item">Celular:<span class="icon s7-phone"></span></td>
                          <td>(999) 999-9999</td>
                        </tr>
                        <tr>
                          <td class="item">Localizacion:<span class="icon s7-map-marker"></span></td>
                          <td>Lima, Peru</td>
                        </tr>
                        <tr>
                          <td class="item">Website:<span class="icon s7-global"></span></td>
                          <td>www.usmp.pe</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                                <div class="widget widget-fullwidth widget-small">
                                  <div class="widget-head">
                                    <div class="tools"><span class="value">58Mb</span></div><span class="title">Actividad de Desarrollo</span>
                                  </div>
                                  <div class="chart-container">
                                    <div id="linechart-mini1" style="height: 150px; padding: 0px; position: relative;"><canvas class="flot-base" width="457" height="150" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 457px; height: 150px;"></canvas><canvas class="flot-overlay" width="457" height="150" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 457px; height: 150px;"></canvas></div>
                                  </div>
                                  <table class="table table-striped table-fw-widget table-hover">
                                    <thead>
                                      <tr>
                                        <th>Operating System</th>
                                        <th class="number">Users</th>
                                        <th class="number">Rebound</th>
                                      </tr>
                                    </thead>
                                    <tbody class="no-border-x">
                                      <tr>
                                        <td>Windows</td>
                                        <td class="number">186</td>
                                        <td class="number">51%</td>
                                      </tr>
                                      <tr>
                                        <td>Mac OS</td>
                                        <td class="number">145</td>
                                        <td class="number">64%</td>
                                      </tr>
                                      <tr>
                                        <td>Linux</td>
                                        <td class="number">89</td>
                                        <td class="number">38%</td>
                                      </tr>
                                      <tr>
                                        <td>Android</td>
                                        <td class="number">67</td>
                                        <td class="number">57%</td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                                <div class="widget widget-fullwidth widget-small">
                                  <div class="widget-head">
                                    <div class="tools"><span class="value">124</span></div><span class="title">Project Issues</span>
                                  </div>
                                  <div class="chart-container">
                                    <div id="barchart-mini1" style="height: 150px; padding: 0px; position: relative;"><canvas class="flot-base" width="457" height="150" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 457px; height: 150px;"></canvas><canvas class="flot-overlay" width="457" height="150" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 457px; height: 150px;"></canvas></div>
                                  </div>
                                  <table class="table table-striped table-fw-widget table-hover">
                                    <thead>
                                      <tr>
                                        <th>Operating System</th>
                                        <th class="number">Users</th>
                                        <th class="number">Rebound</th>
                                      </tr>
                                    </thead>
                                    <tbody class="no-border-x">
                                      <tr>
                                        <td>Windows</td>
                                        <td class="number">186</td>
                                        <td class="number">51%</td>
                                      </tr>
                                      <tr>
                                        <td>Mac OS</td>
                                        <td class="number">145</td>
                                        <td class="number">64%</td>
                                      </tr>
                                      <tr>
                                        <td>Linux</td>
                                        <td class="number">89</td>
                                        <td class="number">38%</td>
                                      </tr>
                                      <tr>
                                        <td>Android</td>
                                        <td class="number">67</td>
                                        <td class="number">57%</td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="widget widget-calendar">
                  <div class="cal-container">
                    <div class="cal-notes"><span class="day">Sunday</span><span class="date">November 8</span><span class="title">Notes<span class="icon s7-plus"></span></span>
                      <ul>
                        <li><span class="hour">14h</span><span class="event-name">Meeting with investors</span></li>
                        <li><span class="hour">8h</span><span class="event-name">Dentist date</span></li>
                      </ul>
                    </div>
                    <div class="cal-calendar">
                      <div class="ui-datepicker hasDatepicker" id="dp1447009200850"><div class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" style="display: block;"><div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all"><a class="ui-datepicker-prev ui-corner-all" data-handler="prev" data-event="click" title="Prev"><span class="ui-icon ui-icon-circle-triangle-w">Prev</span></a><a class="ui-datepicker-next ui-corner-all" data-handler="next" data-event="click" title="Next"><span class="ui-icon ui-icon-circle-triangle-e">Next</span></a><div class="ui-datepicker-title"><span class="ui-datepicker-month">November</span>&nbsp;<span class="ui-datepicker-year">2015</span></div></div><table class="ui-datepicker-calendar"><thead><tr><th scope="col" class="ui-datepicker-week-end"><span title="Sunday">Su</span></th><th scope="col"><span title="Monday">Mo</span></th><th scope="col"><span title="Tuesday">Tu</span></th><th scope="col"><span title="Wednesday">We</span></th><th scope="col"><span title="Thursday">Th</span></th><th scope="col"><span title="Friday">Fr</span></th><th scope="col" class="ui-datepicker-week-end"><span title="Saturday">Sa</span></th></tr></thead><tbody><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">1</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">2</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">3</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">4</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">5</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">6</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">7</a></td></tr><tr><td class=" ui-datepicker-week-end ui-datepicker-days-cell-over  ui-datepicker-current-day ui-datepicker-today" data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default ui-state-highlight ui-state-active ui-state-hover" href="#">8</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">9</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">10</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">11</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">12</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">13</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">14</a></td></tr><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">15</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">16</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">17</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">18</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">19</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">20</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">21</a></td></tr><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">22</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">23</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">24</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">25</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">26</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">27</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">28</a></td></tr><tr><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">29</a></td><td class=" " data-handler="selectDay" data-event="click" data-month="10" data-year="2015"><a class="ui-state-default" href="#">30</a></td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td></tr></tbody></table></div></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                                <div class="widget widget-fullwidth widget-small">
                                  <div class="widget-head">
                                    <div class="tools"><span class="icon s7-upload"></span><span class="icon s7-edit"></span><span class="icon s7-close"></span></div><span class="title">Latest Commits</span>
                                  </div>
                                  <div class="table-container">
                                    <table class="table table-striped table-fw-widget table-hover">
                                      <thead>
                                        <tr>
                                          <th width="32%">User</th>
                                          <th width="45%">Commit</th>
                                          <th>Date</th>
                                        </tr>
                                      </thead>
                                      <tbody class="no-border-x">
                                        <tr>
                                          <td class="user-avatar"> <img src="assets/img/avatar4.jpg">Claire Sassu</td>
                                          <td>Initial commit</td>
                                          <td>Aug 6, 2015</td>
                                        </tr>
                                        <tr>
                                          <td class="user-avatar"> <img src="assets/img/avatar3.jpg">Joel King</td>
                                          <td>Main structure markup</td>
                                          <td>Jul 28, 2015</td>
                                        </tr>
                                        <tr>
                                          <td class="user-avatar"> <img src="assets/img/avatar7.jpg">Maggie Jackson</td>
                                          <td>Left sidebar adjusments</td>
                                          <td>Jul 15, 2015</td>
                                        </tr>
                                        <tr>
                                          <td class="user-avatar"> <img src="assets/img/avatar6.jpg">Mike Bolthort</td>
                                          <td>Topbar dropdown style</td>
                                          <td>Jun 30, 2015</td>
                                        </tr>
                                        <tr>
                                          <td class="user-avatar"> <img src="assets/img/avatar8.jpg">Jhon Voltemar</td>
                                          <td>Footer html structure</td>
                                          <td>Jun 23, 2015</td>
                                        </tr>
                                      </tbody>
                                    </table>
                                  </div>
                                </div>
              </div>
            </div>
          
          </div>
</div>
	</div>
	<!--CONTENEDOR MAIN-->

	
 <%@ include file="template/footer.jsp" %>
 
 
 
 
 
 