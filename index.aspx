<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="The_Gaming_Store.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/index.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <div id="banner">
            <section>
                <div id="banner-logo">
                    <img src="img/logo.png" />
                </div>
                <h1>Welcome to The Gaming Store</h1>
                <p>Join us now to become a part of the best community that offers un-matchable experience. </p>
                <div id="join-now">
                    <input type="text" id="text_join" placeholder="Enter your email" />
                    <input type="submit" id="btn_join" value="Join Now" onclick="join();" />
                </div>
            </section>
        </div>

        <div id="index-services">
            <section>
                <div>
                    <img src="img/service/shipping.png" />
                </div>
                <div>
                    <h2>Free Shipping</h2>
                    <p>Free shipping on all orders.</p>
                </div>
            </section>
            <section>
                <div>
                    <img src="img/service/money-bag.png" />
                </div>
                <div>
                    <h2>Money Back</h2>
                    <p>On return in 7 days.</p>
                </div>
            </section>
            <section>
                <div>
                    <img src="img/service/safe-shopping.png" />
                </div>
                <div>
                    <h2>Safe Shopping</h2>
                    <p>Shop safely across our website.</p>
                </div>
            </section>
            <section>
                <div>
                    <img src="img/service/live-support.png" />
                </div>
                <div>
                    <h2>Live Support</h2>
                    <p>24x7 Live Support.</p>
                </div>
            </section>
        </div>



        <div id="featured-products">

            <h1>Featured Products</h1>

            <section id="featured-listing">
                <div class="featured-item featured-item-1">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 25,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Gaming Computers</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="featured-item featured-item-2">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 60,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Gaming Consoles</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>

                </div>
                <div class="featured-item featured-item-3">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 40,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Laptops & Mobiles</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="featured-item featured-item-4">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 2,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Gaming Accessories</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div id="sale-banner">

            <section id="game-pc">
                <div class="sale-banner-left">
                    <div>
                        <h2>20% off on all gaming computers.</h2>
                        <input type="submit" value="Shop Now" />
                    </div>
                </div>
            </section>
            <section id="game-console">
                <div class="sale-banner-right">
                    <div>
                        <h2>30% off on all gaming consoles.</h2>
                        <input type="submit" value="Shop Now" />
                    </div>
                </div>
            </section>
            <span class="clear"></span>
        </div>

        <div id="popular-products">
            <h1>Popular Products</h1>
            <section id="popular-listing">
                <div class="popular-item popular-item-1">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 45,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Pre-Built Computers</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="popular-item popular-item-2">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 75,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Mac Computers</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="popular-item popular-item-3">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 125,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Macbook</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="popular-item popular-item-4">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 150,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Iphones</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="popular-item popular-item-5">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 25,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Computer Processors</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="popular-item popular-item-6">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 5,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Gaming Mouse</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="popular-item popular-item-7">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 7,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Gaming Keyboards</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="popular-item popular-item-8">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 35,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Gaming Monitors</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="popular-item popular-item-9">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 10,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Apple Accessories</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="popular-item popular-item-10">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 15,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>X-Box Controllers</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="popular-item popular-item-11">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 3,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>AMD Stock Coolers</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
                <div class="popular-item popular-item-12">
                    <div class="hover-box">
                        <div class="hover-box-head">
                            <p>Starting from 6,000</p>
                        </div>
                        <div class="hover-box-top">
                            <h2>Liquid Coolers</h2>
                            <a href="#">View Details</a>
                        </div>
                        <div class="hover-box-bottom">
                            <input type="submit" value="Add to Cart" />
                        </div>
                    </div>
                </div>
            </section>

        </div>

        <div id="clients">
            <h2>Meet our Happy Clients</h2>

            <section id="client-box">
                <div class="client-item">
                    <div class="client-item-1">
                        <div class="client-img"><img src="img/clients/client1.jpg" alt="client-img" /></div>
                        <div class="client-name"><h2>Elon Musk</h2><h3>CEO Tesla</h3></div>
                    </div>
                </div>
                <div class="client-item">
                    <div class="client-item-2">
                        <div class="client-img"><img src="img/clients/client2.jpg" alt="client-img" /></div>
                        <div class="client-name"><h2>Bill Gates</h2><h3>CEO Microsoft</h3></div>
                    </div>
                </div>
                <div class="client-item">
                    <div class="client-item-3">
                        <div class="client-img"><img src="img/clients/client3.jpg" alt="client-img" /></div>
                        <div class="client-name"><h2>Tim Cook</h2><h3>CEO Apple</h3></div>
                    </div>
                </div>
                <div class="client-item">
                    <div class="client-item-4">
                        <div class="client-img"><img src="img/clients/client4.jpg" alt="client-img" /></div>
                        <div class="client-name"><h2>Snoopp Dogg</h2><h3>Rapper, Musician</h3></div>
                    </div>
                </div>
            </section>
        </div>


        <div id="popular-brands">
            <h1>Popular Brands</h1>
            <section>
                <div class="brand-logo"><img src="img/brands/msi-logo.png" alt="logo.png" /></div>
                <div class="brand-logo"><img src="img/brands/microsoft-logo.png" alt="logo.png" /></div>
                <div class="brand-logo"><img src="img/brands/hp-logo.png" alt="logo.png" /></div>
                <div class="brand-logo"><img src="img/brands/logitech-logo.png" alt="logo.png" /></div>
                <div class="brand-logo"><img src="img/brands/asus-logo.png" alt="logo.png" /></div>
            </section>
        </div>
        <script>
            function join() {
                if (document.getElementById("text_join").value == "") {
                    alert("Please fill in your email.");
                }
                else {
                    alert("You have subscribed.");
                }
            }

            var el = document.querySelectorAll(".hover-box"); // this element contains more than 1 DOMs.
            for (var i = 0; i < el.length; i++) {
                el[i].onclick = function () { window.location.href = "product-list.aspx"; };
            }
        </script>
    </div>
</asp:Content>
