<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.model.*" %>
<%@ page import="com.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

</head>
<style>
.gradient-custom {
/* fallback for old browsers */
background: #dd9fbc;


}
</style>
<body>
<section class="h-100 gradient-custom">
  <div class="container py-5">
    <div class="row d-flex justify-content-center my-4"></div>
      <div class="col-md-8">
        <div class="card mb-4">
          <div class="card-header py-3">
            <h5 class="mb-0">Cart  items</h5>
          </div>
          <div class="card-body">
            <!-- Single item -->
            <%Customer c=(Customer)session.getAttribute("customer"); %>
              <%CartDao cd=new CartDao();
              Stack<Product> s1=cd.retrive(c.getId());
              System.out.println(s1.size());
              %>
              
             <% double amount=0;
             while(!s1.isEmpty()){
            	 Product p=s1.pop();
            	 amount += p.getPrice();
            	 %>
            <div class="row">
              <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                <!-- Image -->
                <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                  <img src="<%=p.getImage() %>"
                    class="w-100" alt="Blue Jeans Jacket" />
                  <a href="#!">
                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.2)"></div>
                  </a>
                </div>
                <!-- Image -->
              </div>
              
              <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                <!-- Data -->
                <p><strong><%=p.getProduct_name() %></strong></p>
                <p><%=p.getBrand() %></p>
                <p><%=p.getProduct_category() %></p>
                <form action="RemoveProductController">
                <input type="hidden" value="<%=c.getId()%>" name="cid">
                <input type="hidden" value="<%=p.getProduct_id()%>" name="pid">
                <button type="submit" class="btn btn-primary btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                  title="Remove item">
                  <i class="fas fa-trash"></i>
                </button>
                </form>
                <!-- Data -->
              </div>

              <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                <!-- Quantity -->

                <!-- Price -->
                <p class="text-start text-md-center">
                  <strong><%=p.getPrice() %></strong>
                </p>
                <!-- Price -->
              </div>
            </div>
            <!-- Single item -->
           
            <hr class="my-4" />
 <%} %>
              
        
        
      </div>
      <div class="col-md-4">
        <div class="card mb-4">
          <div class="card-header py-3">
            <h5 class="mb-0">Summary</h5>
          </div>
          <div class="card-body">
            <ul class="list-group list-group-flush">
              <li
                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                Products
                <span></span>
              </li>
              <li
                class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                <div>
                  <strong>Total amount</strong>
                  <strong>
                    <p class="mb-0">(including VAT)</p>
                  </strong>
                </div>
                <span><strong><%=amount %></strong></span>
              </li>
            </ul>

            <button type="button" class="btn btn-primary btn-lg btn-block">
              Pay Now
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
 
</body>
</html>