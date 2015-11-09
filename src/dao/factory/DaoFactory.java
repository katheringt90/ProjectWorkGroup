package dao.factory;

import dao.interfaces.UsuarioDao;
import dao.interfaces.ProductoDao;

public abstract class DaoFactory {

	public static final int MYSQL 		=1;
	public static final int SQLSERVER 	=2;
	public static final int ORACLE 		=3;

	
	//**********AGREGAR************
	public abstract UsuarioDao getUsuarioDao();
	public abstract ProductoDao getProductoDao();
	//**********AGREGAR************

	
	//getDAOFactory
	public static DaoFactory getDAOFactory(int factory){
		
		switch (factory) {
			case MYSQL:
				return new MySqlDaoFactory();
			case SQLSERVER:
				//return new SqlDaoFactory();
			case ORACLE:
				//return new OracleDaoFactory();
			default:
				return null;
		}
	}//getDAOFactory




	
}
