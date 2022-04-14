<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="single-product.aspx.cs" Inherits="The_Gaming_Store.single_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/product-page.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="product-banner">
        <h1><span style="color: red">TGS</span> | <span style="color: blue">The Gaming Store</span></h1>
    </div>

    <div id="container">

        <h1>Product Listing</h1>

        <section id="product-section">
            <aside id="sidebar">

                <div class="sidebar-content">
                    <h3>Brands</h3>
                    <ul id="brands" runat="server">
                    </ul>
                </div>

                <div class="sidebar-content">
                    <h3>Products</h3>
                    <ul id="products" runat="server">
                    </ul>

                </div>
            </aside>
            <section id="product-list">

                <div id="single-product-container">
                    <h3><%= name %></h3>
                    <div id="single-product">
                        <div id="single-product-img">
                            <img src="admin/img/product/<%= img %>" />
                        </div>
                        <div id="single-product-details">
                            <div>
                                <h2><%= name %></h2>
                                <h2 style="color: tomato">Rs. <%= price %></h2>
                                <p>Availability: <span style="color: tomato">&nbsp in Stock</span> </p>
                                <p>Specifications:</p>
                                <ul>
                                    <li>-Good Quality</li>
                                    <li>-Best Price</li>
                                    <li>-Free Delivery</li>
                                    <li>-7 Day Return</li>
                                </ul>
                            </div>
                            <div>
                                <input type="submit" class="btn" value="Add to Cart" id="btn_cart" runat="server" onserverclick="btn_cart_ServerClick" />
                            </div>
                        </div>
                    </div>

                </div>
                <h3>More Products</h3>
                <div id="product_container" class="product-container" runat="server">

                    
                </div>
            </section>
        </section>
    </div>
</asp:Content>
