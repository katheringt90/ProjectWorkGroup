package dao.interfaces;

import java.util.Vector;

import beans.UsuarioBean;

public interface UsuarioDao {
	
	
	public UsuarioBean validar(String username, String password) throws Exception;
	public Vector<UsuarioBean>  listar() throws Exception;
	public int guardar(
						String name, String lastname_pat,
						String lastname_mat, String password,
						String perfil
						) throws Exception;
	public boolean eliminar(int id) throws Exception;
	public UsuarioBean seleccionar(String id) throws Exception;
	public int actualizar(UsuarioBean OBJECT) throws Exception;
	
	
}
