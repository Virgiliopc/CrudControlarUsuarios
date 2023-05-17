package com.ControlarUsuarios.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ControlarUsuarios.bean.Usuario;
import com.mysql.jdbc.PreparedStatement;

public class UsuarioDao {
	
	public static Connection getConnetion() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ControlarUsuarios", "root", "");
		} catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public static List<Usuario> getAllUsuarios() {
		List<Usuario> list = new ArrayList<Usuario>();
		
		try {
			Connection con = getConnetion();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setName(rs.getString("name"));
				usuario.setPassword(rs.getString("password"));
				usuario.setSexo(rs.getString("sexo"));
				usuario.setPais(rs.getString("pais"));
				list.add(usuario);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return list;
	}

}
