package br.com.SistemaLogin.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class CriarConexao {

	public static Connection getConexao() throws SQLException{
		
		try {
			
			//Driver:
			Class.forName("com.mysql.jdbc.Driver");
			//Status:
			System.out.println("Conectado!");
			//banco, user, senha:
			return DriverManager.getConnection("jdbc:mysql://localhost/SistemaLogin", "root", "aqwobj");
			
		} catch (SQLException e) {
			throw new SQLException(e);
		} catch (ClassNotFoundException e1) {
			throw new SQLException(e1);
		}
	}
	
}

//Botão direito no connector e add to build path
