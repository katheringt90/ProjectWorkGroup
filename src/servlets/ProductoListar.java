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

import beans.ProductoBean;
import dao.interfaces.ProductoDao;
import util.Constant;
import dao.factory.DaoFactory;

/**
 * Servlet implementation class SlideListar
 */
@WebServlet("/producto-listar")
public class ProductoListar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductoListar() {
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
				
			//VERIFICA SI ESTA LOGEADO
			if(sesion.getAttribute(Constant.OBJ_USUARIO) == null){
				response.sendRedirect(request.getContextPath() +"/inicio");
			}
			//VERIFICA SI ESTA LOGEADO
			
			
			
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);

			//##### ARRAY LIST #####
			ProductoDao DAO = dao.getProductoDao();
			Vector<ProductoBean> OBJECT = DAO.listar();	
			request.setAttribute(Constant.LISTA_OBJECT, OBJECT);
			//##### ARRAY LIST #####	
			
			getServletContext().getRequestDispatcher("/html/list/listarProducto.jsp").forward(request,  response);
			
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
