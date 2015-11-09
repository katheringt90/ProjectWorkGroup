package dao.interfaces;

import java.util.Vector;

import beans.ProductoBean;

public interface ProductoDao {
	
	public ProductoBean validar(String username, String password) throws Exception;
	public Vector<ProductoBean>  listar() throws Exception;
	public int guardar(ProductoBean producto) throws Exception;
	public boolean eliminar(int id) throws Exception;
	public ProductoBean seleccionar(String id) throws Exception;
	public int actualizar(ProductoBean OBJECT) throws Exception;
	
	
}
