package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.UsuarioBean;

import dao.interfaces.UsuarioDao;
import dao.factory.DaoFactory;

/**
 * Servlet implementation class SlideAgregar
 */
@WebServlet("/usuario-agregar")
public class UsuarioAgregar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioAgregar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		try {
			
			//SESSION
			HttpSession sesion = request.getSession();
			//SESSION
			
			getServletContext().getRequestDispatcher("/html/form/agregarUsuario.jsp").forward(request,  response);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			out.print(e.getMessage());
		}
		
	}//get

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {
			
			//SESSION
			HttpSession sesion = request.getSession();
			//SESSION
			
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			UsuarioDao USUARIO_DAO = dao.getUsuarioDao();
			int flag = -1;

			//flag = USUARIO_DAO.guardar(nombre, apellido,email, password);

			
			if(flag  > 0){
				sesion.setAttribute("mensaje",  "Usuario Creado");
			}else{
				sesion.setAttribute("mensaje",  "error");
			}
			response.sendRedirect(request.getContextPath() +"/UsuarioListar");
			
		} catch (Exception e) {
			// TODO: handle exception
			out.print(e.getMessage());
		}
	}//doPost

	
	
	
	
}
