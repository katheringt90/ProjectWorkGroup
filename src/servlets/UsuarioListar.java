package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UsuarioBean;
import dao.interfaces.UsuarioDao;
import dao.factory.DaoFactory;

/**
 * Servlet implementation class SlideListar
 */
@WebServlet("/usuario-listar")
public class UsuarioListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioListar() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		try {
				
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);

			//##### ARRAY LIST #####
			UsuarioDao USUARIODAO = dao.getUsuarioDao();
			Vector<UsuarioBean> USUARIO = USUARIODAO.listar();	
			request.setAttribute("LISTAR_USUARIO", USUARIO);
			//##### ARRAY LIST #####	
			
			getServletContext().getRequestDispatcher("/html/list/listarUsuario.jsp").forward(request,  response);
			
		} catch (Exception e) {
			// TODO: handle exception
			out.print(e.getMessage());
		}
		
	}//doGet
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	

}
