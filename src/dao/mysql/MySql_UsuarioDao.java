package dao.mysql;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;
import dao.factory.MySqlDaoFactory;

import beans.UsuarioBean;
import dao.interfaces.UsuarioDao;

public class MySql_UsuarioDao extends MySqlDaoFactory implements UsuarioDao {
	
	//VALIDAR
	public UsuarioBean validar(String username, String password) throws Exception {

		UsuarioBean USUARIO = null;
		
		try {
			
			System.out.print("username::: "+username);
			System.out.print("password::: "+password);
			

			String query = "SELECT t1.* FROM t_usuario AS t1 WHERE t1.username = '"+username+"' AND t1.password = '"+password+"'";
			
			//--------DAO-------
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			//--------DAO-------
			
			//rs.next()
			if(rs.next()){
				USUARIO = new UsuarioBean();
				USUARIO.setUsername(rs.getString("username"));
				USUARIO.setId(rs.getString("id"));
				USUARIO.setNombre(rs.getString("nombre"));
				USUARIO.setApellido(rs.getString("apellido"));
				USUARIO.setEmail(rs.getString("email"));
			}//rs.next()
			
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		return USUARIO;
	}//VALIDAR

	
	//LISTAR
	@Override
	public Vector<UsuarioBean> listar() throws Exception {
		
		Vector<UsuarioBean> VECTOR_OUT = null;
		
		try {
			
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			
			String query = "SELECT * FROM t_usuario ORDER BY id DESC";
			ResultSet rs = stmt.executeQuery(query);
			VECTOR_OUT = new Vector<UsuarioBean>();
			
			//while
			while(rs.next()){			
				UsuarioBean object = new UsuarioBean();
				object.setId(rs.getString("id"));
				object.setNombre(rs.getString("nombre"));
				object.setApellido(rs.getString("apellido"));
				object.setEmail(rs.getString("email"));
				object.setPassword(rs.getString("password"));
				object.setAvatar(rs.getString("avatar"));
				object.setRol(rs.getString("rol"));
				
				VECTOR_OUT.add(object);
			}//while
			
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
		
		return VECTOR_OUT;
		
	}

	
	
	@Override
	public int guardar(
			String name, String lastname_pat,
			String lastname_mat, String password,
			String role		
	) throws Exception {
		
		int flag = 0;
		int i = 0;
		int id = 0;
		
		try {

			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();

			String query = 	"INSERT INTO t_usuario " +
							"(nombre,apellido,email,password) " +
							"VALUES " +
							"()";
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
		
			int i =	stmt.executeUpdate("DELETE FROM t_usuario WHERE id=" + id);

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
	public UsuarioBean seleccionar(String id) throws Exception {
		// TODO Auto-generated method stub
		UsuarioBean USUARIO = null;
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
			
			
			// SELECT * FROM t_usuario WHERE id_user=
			String query = "SELECT t1.* FROM t_usuario AS t1 WHERE t1.id=" + id;
			
			ResultSet rs = stmt.executeQuery(query);
			
			//rs.next()
			if(rs.next()){	
				USUARIO = new UsuarioBean();
				USUARIO.setId(rs.getString("id"));
				USUARIO.setEmail(rs.getString("email"));
				USUARIO.setNombre(rs.getString("nombre"));
				USUARIO.setApellido(rs.getString("apellido"));
				USUARIO.setPassword(rs.getString("password"));
			}//rs.next()
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		
		return USUARIO;
	}
	
	
	@Override
	public int actualizar(UsuarioBean OBJECT) throws Exception {
		int flag = -1;
		
		try {
			Connection con = MySqlDaoFactory.obtenerConexion();
			Statement stmt = con.createStatement();
	
			String query = "UPDATE t_usuario SET " +
			"nombre='"+OBJECT.getNombre()+"'," +
			"apellido='"+OBJECT.getApellido()+"', " +
			"email='"+OBJECT.getEmail()+"', " +
			"password='"+OBJECT.getPassword()+"' " +
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
