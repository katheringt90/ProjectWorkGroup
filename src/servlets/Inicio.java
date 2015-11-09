package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.factory.DaoFactory;

/**
 * Servlet implementation class Inicio
 */
@WebServlet("/inicio")
public class Inicio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Inicio() {
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
			
			/*
			DaoFactory dao = DaoFactory.getDAOFactory(DaoFactory.MYSQL);
			SlideDao var1 = dao.getSlideDao();
			Vector<SlideBean> var2 = var1.listarSlide();
			request.setAttribute("slide", var2);
			//request.setAttribute("header", "mostrar");
			*/
			getServletContext().getRequestDispatcher("/html/inicio.jsp").forward(request,  response);

			
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
