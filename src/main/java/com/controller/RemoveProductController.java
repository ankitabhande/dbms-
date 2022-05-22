package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CartDao;
import com.model.Cart;

/**
 * Servlet implementation class RemoveProductController
 */
@WebServlet("/RemoveProductController")
public class RemoveProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid=request.getParameter("pid");
		String cid=request.getParameter("cid");
		CartDao cd=new CartDao();
		Cart c1=new Cart(Integer.parseInt(pid),Integer.parseInt(cid),1);
		int i=cd.delete(c1);
		if(i>0) {
			System.out.println("deleted succesfully");
		}
		else
		{
			System.out.println("unable to delete");
		}
		response.sendRedirect("Cart.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
