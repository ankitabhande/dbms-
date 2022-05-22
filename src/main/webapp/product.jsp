<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>complete responsive cosmetics website design tutorial</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/css/lightgallery.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<style>
body{
background:#dd9fbc;
}
</style>
<body>

<!-- header section starts  -->

<header class="header">

    <a href="#home" class="logo"> <img src="images/logo.png" alt=""> </a>

    <form action="" class="search-form">
        <input type="search" name="" placeholder="search here..." id="search-box">
        <label for="search-box" class="fas fa-search"></label>
    </form>

    <div class="icons">
        <div id="menu-btn" class="fas fa-bars"></div>
        <div id="search-btn" class="fas fa-search"></div>
        <a href="#" class="fas fa-heart"></a>
        <a href="Cart.jsp" class="fas fa-shopping-cart"></a>
        <a href="#" class="fas fa-solid fa-user"></a>
        
    </div>

</header>

<!-- navbar section  -->

<nav class="navbar">
    <div id="close-navbar" class="fas fa-times"></div>
    <a href="#home">home</a>
    <a href="#shop">shop</a>
    <a href="#gallery">gallery</a>
    <a href="#team">team</a>
    <a href="#arrivals">arrivals</a>
    <a href="#blogs">blogs</a>
</nav>


<section class="category">

    <a href="#" class="box">
        <img src="images/category-1.png" alt="">
        <p>cosmetics</p>
    </a>

    <a href="#" class="box">
        <img src="images/category-2.png" alt="">
        <p>makeup</p>
    </a>

    <a href="#" class="box">
        <img src="images/category-3.png" alt="">
        <p>powder</p>
    </a>

    <a href="#" class="box">
        <img src="images/category-4.png" alt="">
        <p>lotions</p>
    </a>

    <a href="#" class="box">
        <img src="images/category-5.png" alt="">
        <p>lipstick</p>
    </a>

    <a href="#" class="box">
        <img src="images/category-6.png" alt="">
        <p>mascara</p>
    </a>

</section>



<section class="shop" id="shop">

    <div class="heading">
        <h1>Products</h1>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quasi consequuntur officia beatae distinctio minus optio?</p>
    </div>

    <div class="swiper products-slider">

        <div class="swiper-wrapper">
<%LinkedList<Product> lst=(LinkedList<Product>)session.getAttribute("ProductList"); %>
<%Customer c=(Customer)session.getAttribute("customer");%>
<%for(int i=0;i<lst.size();i++){ %>
            <div class="swiper-slide slide">
                <div class="image">
                    <span class="discount">-25%</span>
                    <img src="<%=lst.get(i).getImage() %>" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-shopping-cart"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <p><%=lst.get(i).getProduct_name() %></p>
                    <div class="price"><%=lst.get(i).getPrice() %><span>$79.99</span></div>
                </div>
                <form action="CartController">
                <input type="hidden" value="<%=lst.get(i).getProduct_id()%>" name="pid">
                 <input type="hidden" value="<%=c.getId()%>" name="cid">
                <button class="btn" type="submit">Add to cart
                </button>
                </form>
            </div>
            
<%} %>
                   </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

</section>

<section class="arrivals" id="arrivals">

    <div class="heading">
        <h1>new arrivals</h1>
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quasi consequuntur officia beatae distinctio minus optio?</p>
    </div>

    <div class="swiper arrivals-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="images/arrival-1.jpg" alt="">
                </div>
                <div class="content">
                    <p>beauty products</p>
                    <div class="price">$49.99 <span>$79.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="images/arrival-2.jpg" alt="">
                </div>
                <div class="content">
                    <p>beauty products</p>
                    <div class="price">$49.99 <span>$79.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="images/arrival-3.jpg" alt="">
                </div>
                <div class="content">
                    <p>beauty products</p>
                    <div class="price">$49.99 <span>$79.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="images/arrival-4.jpg" alt="">
                </div>
                <div class="content">
                    <p>beauty products</p>
                    <div class="price">$49.99 <span>$79.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="images/arrival-5.jpg" alt="">
                </div>
                <div class="content">
                    <p>beauty products</p>
                    <div class="price">$49.99 <span>$79.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="images/arrival-6.jpg" alt="">
                </div>
                <div class="content">
                    <p>beauty products</p>
                    <div class="price">$49.99 <span>$79.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="images/arrival-7.jpg" alt="">
                </div>
                <div class="content">
                    <p>beauty products</p>
                    <div class="price">$49.99 <span>$79.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="image">
                    <img src="images/arrival-8.jpg" alt="">
                </div>
                <div class="content">
                    <p>beauty products</p>
                    <div class="price">$49.99 <span>$79.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>
            </div>

        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>
    
</section>

<!-- arrivals section ends -->

<!-- reviews section starts  -->

<section class="reviews">

    <div class="swiper reviews-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide slide">
                <div class="user">
                    <img src="images/pic-1.png" alt="">
                    <div class="info">
                        <h3>john deo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>
                <p class="text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. In quis ipsa aspernatur incidunt iusto veniam cumque error quaerat officia. Aspernatur?</p>
            </div>

            <div class="swiper-slide slide">
                <div class="user">
                    <img src="images/pic-2.png" alt="">
                    <div class="info">
                        <h3>john deo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>
                <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum similique, numquam non, quasi, voluptatibus perspiciatis fugiat incidunt veniam nulla in aut aliquid necessitatibus nobis reiciendis ullam explicabo. Nulla, rem adipisci.</p>
            </div>

            <div class="swiper-slide slide">
                <div class="user">
                    <img src="images/pic-3.png" alt="">
                    <div class="info">
                        <h3>john deo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>
                <p class="text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Odit aliquid mollitia voluptatem alias illo officiis.</p>
            </div>

            <div class="swiper-slide slide">
                <div class="user">
                    <img src="images/pic-4.png" alt="">
                    <div class="info">
                        <h3>john deo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>
                <p class="text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. In quis ipsa aspernatur incidunt iusto veniam cumque error quaerat officia. Aspernatur?</p>
            </div>

            <div class="swiper-slide slide">
                <div class="user">
                    <img src="images/pic-5.png" alt="">
                    <div class="info">
                        <h3>john deo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>
                <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus sequi minima sed obcaecati iste beatae quo praesentium, deleniti earum velit labore nobis voluptates a quam veniam delectus fugiat! Saepe, eos!</p>
            </div>

            <div class="swiper-slide slide">
                <div class="user">
                    <img src="images/pic-6.png" alt="">
                    <div class="info">
                        <h3>john deo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>
                <p class="text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. In quis ipsa aspernatur incidunt iusto veniam cumque error quaerat officia. Aspernatur?</p>
            </div>

        </div>

    </div>

</section>

<!-- reviews section ends  -->

<!-- service section starts  -->

<section class="service">

    <div class="box">
        <img src="images/service-1.png" alt="">
        <h3>free shipping</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias, fugit?</p>
    </div>

    <div class="box">
        <img src="images/service-2.png" alt="">
        <h3>secure payment</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias, fugit?</p>
    </div>

    <div class="box">
        <img src="images/service-3.png" alt="">
        <h3>2/4 support</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias, fugit?</p>
    </div>

</section>
<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>quick links</h3>
            <a class="link" href="#home"> <i class="fas fa-angle-right"></i> home</a>
            <a class="link" href="#shop"> <i class="fas fa-angle-right"></i> shop</a>
            <a class="link" href="#gallery"> <i class="fas fa-angle-right"></i> gallery</a>
            <a class="link" href="#team"> <i class="fas fa-angle-right"></i> team</a>
            <a class="link" href="#arrivals"> <i class="fas fa-angle-right"></i> arrivals</a>
            <a class="link" href="#blogs"> <i class="fas fa-angle-right"></i> blogs</a>
        </div>

        <div class="box">
            <h3>extra links</h3>
            <a href="#" class="link"> <i class="fas fa-angle-right"></i> my order </a>
            <a href="#" class="link"> <i class="fas fa-angle-right"></i> my favorite </a>
            <a href="#" class="link"> <i class="fas fa-angle-right"></i> my wishlist </a>
            <a href="#" class="link"> <i class="fas fa-angle-right"></i> private policy </a>
            <a href="#" class="link"> <i class="fas fa-angle-right"></i> terms of use </a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <p> <i class="fas fa-phone"></i> +123-456-7890 </p>
            <p> <i class="fas fa-phone"></i> +111-222-3333 </p>
            <p> <i class="fas fa-envelope"></i> shaikhanas@gmail.com </p>
            <p> <i class="fas fa-map"></i> mumbai, india - 400104 </p>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <h3>newsletter</h3>
            <p>subscribe for latest updates</p>
            <form action="">
                <input type="email" name="" placeholder="enter your email" id="" class="email">
                <input type="submit" value="subscribe" class="btn">
            </form>
        </div>

    </div>

</section>

<!-- footer section ends -->











<script src="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/js/lightgallery.min.js"></script>

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link      -->
<script src="js/script.js"></script>

<script>
    lightGallery(document.querySelector('.gallery .lightbox'));
</script>
    
</body>
</html>