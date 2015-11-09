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
import dao.factory.DaoFactory;
import dao.interfaces.UsuarioDao;
import util.Constant;

/**
 * Servlet implementation class Inicio
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
			/*
			DaoFactory var1 = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			CategoriaDao var2 = var1.getCategoriaDao();
			Vector<CategoriaBean> var3 =var2.listarCategorias();
			request.setAttribute("categorias", var3);
			getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
			*/

			getServletContext().getRequestDispatcher("/html/login.jsp").forward(request,  response);

			
		} catch (Exception e) {
			// TODO: handle exception
			out.print(e.getMessage());
		}
	}//doGet
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			request.setAttribute("username", username);
			request.setAttribute("password", password);
			
			DaoFactory DAO = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			UsuarioDao GET_DAO = DAO.getUsuarioDao();
			UsuarioBean USUARIO_BEAN = GET_DAO.validar(username, password);
			
			//null
			if(USUARIO_BEAN == null){
				//SESSION
				HttpSession sesion = request.getSession();
				//SESSION
				sesion.setAttribute(Constant.MESSAGE, "No tiene acceso al sistema");
				//request.setAttribute("mensaje", "Error de logeo");
				getServletContext().getRequestDispatcher("/html/login.jsp").forward(request, response);
			}else{
				
				//SESSION
				HttpSession sesion = request.getSession();
				sesion.setAttribute(Constant.OBJ_USUARIO, USUARIO_BEAN);
				//System.out.print(roles);
				//SESSION
		
				response.sendRedirect(request.getContextPath() +"/inicio");
				
			}//null
			
		} catch (Exception e) {
			// TODO: handle exception
			out.print(e.getMessage());
		}
	}

}
