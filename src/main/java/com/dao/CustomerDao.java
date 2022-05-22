package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.Customer;
import com.model.Login;

public class CustomerDao {
	public int insert(Customer c) {
		int i=0;
		Connection con=MyConnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("insert into Customer values(default,?,?,?,?,?)");
			ps.setString(1, c.getFname());
			ps.setString(2, c.getLname());
			ps.setString(3, c.getEmail());
			ps.setString(4, c.getPass());
			ps.setString(5, c.getMobno());
			  
			i=ps.executeUpdate();
			if(i>0) {
				System.out.println("customer record inserted");
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
	
	public Customer validate(Login l) {
		int i=0;
		Connection con=MyConnection.getConnection();
		Customer c=null;
		try {
			PreparedStatement ps=con.prepareStatement("select * from Customer where cust_email=?");
			ps.setString(1, l.getEmail());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				if(rs.getString(5).equals(l.getPass())) {
					i=1;
					c=new Customer(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
					c.setId(rs.getInt(1));
				}
			}
			
			if(i>0) {
				System.out.println("valid user");
			}
			else{
				System.out.println("invalid");
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
		return c;

	}
	public static void main(String[] args) {
		CustomerDao d=new CustomerDao();
		Customer c=new Customer("vidhi","vaswani","vidhivaswani@gmail.com","vidhi123","4564545445");
		d.insert(c);
	}
}
