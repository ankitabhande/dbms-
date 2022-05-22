package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import com.model.Product;

public class ProductDao {
	
	public LinkedList<Product>  retrive(String producttype) {
		LinkedList<Product> p1=new LinkedList<>();
		
		Connection con=MyConnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from product where prod_category=?");
			ps.setString(1, producttype);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
		Product p2=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getInt(6),rs.getString(7));
		p1.add(p2);
		
		
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return p1;
		
	}

}
