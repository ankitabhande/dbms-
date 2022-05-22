package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Stack;

import com.model.Cart;
import com.model.Product;

public class CartDao {
	public int insert(Cart c) {
		int i=0;
		Connection con=MyConnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("insert into cart values(?,?,?)");
			ps.setInt(1, c.getPid());
			ps.setInt(2, c.getCid());
			ps.setInt(3, c.getQty());
			  System.out.println(c.getCid()+" "+c.getPid()+" "+c.getQty());
			i=ps.executeUpdate();
			if(i>0) {
				System.out.println("product record inserted");
			}
			else{
				System.out.println("unable to insert");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	
	}
	
	public Stack<Product> retrive(int cid){
		Connection con=MyConnection.getConnection();
		Stack<Product> s1=new Stack<>();
		try {
			PreparedStatement ps=con.prepareStatement("select * from Product where prod_id IN (select prod_id from cart where cust_id=?);");
			ps.setInt(1, cid);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
		          Product p2=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getDouble(5),rs.getInt(6),rs.getString(7));
		          s1.push(p2);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return s1;
	
	}
	
	public int delete(Cart c)
	{
		int i=0;
		Connection con=MyConnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("delete from cart where cust_id=? and prod_id=?");
			ps.setInt(2, c.getPid());
			ps.setInt(1, c.getCid());
			
			i=ps.executeUpdate();
			if(i>0) {
				System.out.println("product record deleted");
			}
			else{
				System.out.println("unable to delete");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
}
