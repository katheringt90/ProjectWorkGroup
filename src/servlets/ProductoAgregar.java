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
import beans.UsuarioBean;
import dao.interfaces.ProductoDao;
import dao.interfaces.UsuarioDao;
import util.Constant;
import dao.factory.DaoFactory;

/**
 * Servlet implementation class SlideAgregar
 */
@WebServlet("/producto-agregar")
public class ProductoAgregar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductoAgregar() {
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
			
			getServletContext().getRequestDispatcher("/html/form/agregarProducto.jsp").forward(request,  response);
			
			
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
			String descripcion = request.getParameter("descripcion");
			UsuarioBean usuario = (UsuarioBean) sesion.getAttribute(Constant.OBJ_USUARIO);
			
			ProductoBean producto = new ProductoBean();
			producto.setUsername(usuario.getUsername());
			producto.setNombre(nombre);
			producto.setDescripcion(descripcion);
			
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			ProductoDao PRODUCTO_DAO = dao.getProductoDao();
			int flag = -1;

			flag = PRODUCTO_DAO.guardar(producto);
			
			if(flag  > 0){
				sesion.setAttribute(Constant.MESSAGE,  "Producto Creado");
			}else{
				sesion.setAttribute(Constant.MESSAGE,  "error");
			}
			response.sendRedirect(request.getContextPath() +"/producto-listar");
			
		} catch (Exception e) {
			// TODO: handle exception
			out.print(e.getMessage());
		}
	}//doPost

	
	
	
	
}
