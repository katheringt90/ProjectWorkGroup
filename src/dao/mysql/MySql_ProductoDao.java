package dao.mysql;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;
import dao.factory.MySqlDaoFactory;

import beans.ProductoBean;
import dao.interfaces.ProductoDao;
import util.FuncionesComunes;

public class MySql_ProductoDao extends MySqlDaoFactory implements ProductoDao {
	
	//VALIDAR
	public ProductoBean validar(String username, String password) throws Exception {

		ProductoBean USUARIO = null;
		
		try {

			String query = "SELECT t1.* FROM t_producto AS t1 WHERE t1.username = '"+username+"' AND t1.password = '"+password+"'";
			
			//--------DAO-------
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			//--------DAO-------
			
			//rs.next()
			if(rs.next()){
				USUARIO = new ProductoBean();
				USUARIO.setUsername(rs.getString("username"));
				USUARIO.setId(rs.getString("id"));
				USUARIO.setNombre(rs.getString("nombre"));
			}//rs.next()
			
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return USUARIO;
	}//VALIDAR

	
	//LISTAR
	@Override
	public Vector<ProductoBean> listar() throws Exception {
		
		Vector<ProductoBean> VECTOR_OUT = null;
		
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String query = "SELECT * FROM t_producto ORDER BY id DESC";
			ResultSet rs = stmt.executeQuery(query);
			VECTOR_OUT = new Vector<ProductoBean>();
			
			//while
			while(rs.next()){			
				ProductoBean object = new ProductoBean();
				object.setId(rs.getString("id"));
				object.setNombre(rs.getString("nombre"));
				object.setDescripcion(rs.getString("descripcion"));
				object.setCreado(rs.getString("creado"));
				
				VECTOR_OUT.add(object);
			}//while
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return VECTOR_OUT;
		
	}

	
	
	@Override
	public int guardar(ProductoBean producto) throws Exception {
		
		int flag = 0;
		int i = 0;
		int id = 0;
		
		try {

			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String uuid = FuncionesComunes.shortUUID();
			String query = 	"INSERT INTO t_producto " +
							"(username,nombre,descripcion,codigo) " +
							"VALUES " +
							"('"+producto.getUsername()+"','"+producto.getNombre()+"','"+producto.getDescripcion()+"','"+uuid+"')";
			i = stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
			

			if(i == 1){
				flag = 1;
				
				ResultSet rs = null;
				rs = stmt.getGeneratedKeys();
	            rs.next();
	            id = rs.getInt(1);
				System.out.print(id);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		if(flag == 1)
			return id;
		else
			return flag;
	}
	
	

	@Override
	public boolean eliminar(int id) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
		
			int i =	stmt.executeUpdate("DELETE FROM t_producto WHERE id=" + id);

			if(i==1){
				flag=true;
			}
				
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return flag;
	}
	
	
	@Override
	public ProductoBean seleccionar(String id) throws Exception {
		// TODO Auto-generated method stub
		ProductoBean USUARIO = null;
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			
			
			// SELECT * FROM t_producto WHERE id_user=
			String query = "SELECT t1.* FROM t_producto AS t1 WHERE t1.id=" + id;
			
			ResultSet rs = stmt.executeQuery(query);
			
			//rs.next()
			if(rs.next()){	
				USUARIO = new ProductoBean();
				USUARIO.setId(rs.getString("id"));
				USUARIO.setNombre(rs.getString("nombre"));
				USUARIO.setDescripcion(rs.getString("descripcion"));
				USUARIO.setCreado(rs.getString("creado"));
			}//rs.next()
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return USUARIO;
	}
	
	
	@Override
	public int actualizar(ProductoBean OBJECT) throws Exception {
		int flag = -1;
		
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
	
			String query = "UPDATE t_producto SET " +
			"nombre='"+OBJECT.getNombre()+"'," +
			"descripcion='"+OBJECT.getDescripcion()+"', " +
			"creado='"+OBJECT.getCreado()+"' " +
			"WHERE id='"+OBJECT.getId()+"'";
			int i =	stmt.executeUpdate(query);
	
			System.out.print(query);

			if(i==1){
				flag=1;
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return flag;
	}

	
}
