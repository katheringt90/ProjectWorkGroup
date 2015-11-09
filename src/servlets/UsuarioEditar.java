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
 * Servlet implementation class CategoriaEditar
 */
@WebServlet("/usuario-editar")
public class UsuarioEditar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioEditar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		try {
			
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);

			/*
			//##### ARRAY LIST #####
			UsuarioDao USUARIODAO = dao.getUsuarioDao();
			Vector<UsuarioBean> USUARIO = USUARIODAO.listar();	
			request.setAttribute("listaApoderado", USUARIO);
			//##### ARRAY LIST #####	
			*/
			
			
			
			String datoEditar = request.getParameter("dato");
			UsuarioDao var1 = dao.getUsuarioDao();
			UsuarioBean var2 = var1.seleccionar(datoEditar);	
			request.setAttribute("USUARIO", var2);
			
			getServletContext().getRequestDispatcher("/grupo0/form/editarUsuario.jsp").forward(request, response);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			out.print(e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		try {
			
			
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			
			String id = request.getParameter("id");
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String email = request.getParameter("email");
			String password = request.getParameter("password");	
			
			UsuarioBean USUARIO = new UsuarioBean();
			USUARIO.setId(id);
			USUARIO.setNombre(nombre);
			USUARIO.setApellido(apellido);
			USUARIO.setEmail(email);
			USUARIO.setPassword(password);
			
			UsuarioDao var1 = dao.getUsuarioDao();
			int var2 =  var1.actualizar(USUARIO);
			
			//SESSION
			HttpSession sesion = request.getSession();
			//SESSION
			
			if(var2 > 0){
				sesion.setAttribute("mensaje",  "usuario actualizado");
			}else{
				sesion.setAttribute("mensaje",  "error");
			}
			
			
			UsuarioDao var3 = dao.getUsuarioDao();
			UsuarioBean var4 = var3.seleccionar(id);	
			request.setAttribute("USUARIO", var4);

			response.sendRedirect(request.getContextPath() +"/UsuarioEditar?dato="+id);
			//getServletContext().getRequestDispatcher("/form/editarUsuario.jsp").forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
			out.print(e.getMessage());
		}
	}

}
