<%-- 
    Document   : index
    Created on : Apr 8 2024, 10:00:49 AM
    Author     : ACER
--%>

<%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.dao.ProductDao"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="style.css">
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
        request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="/includes/head.jsp"%>
        <title>Dolphin Shopping</title>
    </head>
    <body>
        <%@include file="/includes/navbar.jsp"%>

        <section id="banner" style="background: #F9F3EC;">
            <div class="container">
                <div class="swiper main-swiper">
                    <div class="swiper-wrapper">

                        <div class="swiper-slide py-5">
                            <div class="row banner-content align-items-center">
                                <div class="img-wrapper col-md-5">
                                    <img src="product-image/banner1.png" class="img-fluid" >
                                </div>
                                <div class="content-wrapper col-md-7 p-5 mb-5">
                                    <div class="secondary-font text-primary text-uppercase mb-4">Save 10 - 20 % off</div>
                                    <h2 class="banner-title display-1 fw-normal">The best in football<span class="text-primary"> clothing.</span></h2>
                                    <a href="index.jsp" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">
                                        shop now
                                        <svg width="24" height="24" viewBox="0 0 24 24" class="mb-1">
                                        <use xlink:href="#arrow-right"></use>
                                        </svg>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="swiper-pagination mb-5"></div>

                </div>
            </div>
        </section>

        <div class="container">
            <div class="card-header my-3">All Products</div>
            <div class="row">
                <%
                if (!products.isEmpty()) {
                        for (Product p : products) {
                %>
                <div class="col-md-3 my-3">
                    <div class="card w-100">
                        <img class="card-img-top" src="product-image/<%=p.getImage() %>"
                             alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title"><%=p.getName() %></h5>
                            <h6 class="price">Price: $<%=p.getPrice() %></h6>
                            <h6 class="category">Category: <%=p.getCategory() %></h6>
                            <div class="mt-3 d-flex justify-content-between">
                                <a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a> <a
                                    class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                }
                } else {
                out.println("There is no products");
                }
                %>

            </div>
        </div>

        <footer
            class="text-center text-lg-start text-white"
            style="background-color: #1c2331"
            >
            <!-- Section: Social media -->
            <section
                class="d-flex justify-content-between p-4"
                style="background-color: #C0C0C0"
                >
                <!-- Left -->
                <div class="me-5">
                    <span>Get connected with us on social networks:</span>
                </div>
                <!-- Left -->

                <!-- Right -->
                <div>
                    <a href="https://www.facebook.com/profile.php?id=100091781775811&locale=vi_VN" class="text-white me-4">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="" class="text-white me-4">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="" class="text-white me-4">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="" class="text-white me-4">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="" class="text-white me-4">
                        <i class="fab fa-linkedin"></i>
                    </a>
                    <a href="" class="text-white me-4">
                        <i class="fab fa-github"></i>
                    </a>
                </div>
                <!-- Right -->
            </section>
            <!-- Section: Social media -->

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <h6 class="text-uppercase fw-bold">Company name</h6>
                            <hr
                                class="mb-4 mt-0 d-inline-block mx-auto"
                                style="width: 60px; background-color: #7c4dff; height: 2px"
                                />
                            <p>
                                Here you can buy 1:1 replica sportswear of all major football teams in the world.
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold">Products</h6>
                            <hr
                                class="mb-4 mt-0 d-inline-block mx-auto"
                                style="width: 60px; background-color: #7c4dff; height: 2px"
                                />
                            <p>
                                <a href="#!" class="text-white">MDBootstrap</a>
                            </p>
                            <p>
                                <a href="#!" class="text-white">MDWordPress</a>
                            </p>
                            <p>
                                <a href="#!" class="text-white">BrandFlow</a>
                            </p>
                            <p>
                                <a href="#!" class="text-white">Bootstrap Angular</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold">Useful links</h6>
                            <hr
                                class="mb-4 mt-0 d-inline-block mx-auto"
                                style="width: 60px; background-color: #7c4dff; height: 2px"
                                />
                            <p>
                                <a href="#!" class="text-white">Your Account</a>
                            </p>
                            <p>
                                <a href="#!" class="text-white">Become an Affiliate</a>
                            </p>
                            <p>
                                <a href="#!" class="text-white">Shipping Rates</a>
                            </p>
                            <p>
                                <a href="#!" class="text-white">Help</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold">Contact</h6>
                            <hr
                                class="mb-4 mt-0 d-inline-block mx-auto"
                                style="width: 60px; background-color: #7c4dff; height: 2px"
                                />
                            <p><i class="fas fa-home mr-3"></i> DA NANG, Hai Chau, VIETNAM</p>
                            <p><i class="fas fa-envelope mr-3"></i> info@example.com</p>
                            <p><i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
                            <p><i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->

            <!-- Copyright -->
            <div
                class="text-center p-3"
                style="background-color: rgba(0, 0, 0, 0.2)"
                >
                © 2024 Copyright:
                <a class="text-white" href="https://mdbootstrap.com/"
                   >Dolphin.com</a
                >
            </div>
            <!-- Copyright -->
        </footer>
                

        <%@include file="/includes/footer.jsp"%>
    </body>
</html>
