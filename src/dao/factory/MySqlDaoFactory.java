package dao.factory;

import java.sql.Connection;
import java.sql.DriverManager;

import dao.interfaces.ProductoDao;
import dao.interfaces.UsuarioDao;

import dao.mysql.MySql_UsuarioDao;
import dao.mysql.MySql_ProductoDao;

public class MySqlDaoFactory extends DaoFactory {

	
	//**********AGREGAR************
	public UsuarioDao getUsuarioDao(){
		return new MySql_UsuarioDao();
	}
	public ProductoDao getProductoDao(){
		return new MySql_ProductoDao();
	}
	//**********AGREGAR************
	
	
	//obtenerConexion
	public static Connection obtenerConexion(){
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/sw_schema_db";			
			con = DriverManager.getConnection(url, "root", "toor"); 
		} catch (Exception e) {
			
			// TODO: handle exception
			System.out.print("USMP INFO - Connection Failed");
			System.out.print(e.getMessage());
			e.printStackTrace();
		}
		
		return con;
	}//obtenerConexion
	
	
}
