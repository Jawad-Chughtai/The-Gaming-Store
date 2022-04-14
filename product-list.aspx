<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="product-list.aspx.cs" Inherits="The_Gaming_Store.product_list" %>

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
                <h3>Listing</h3>
                <div id="product_container" runat="server" class="product-container">

                </div>
            </section>
        </section>
    </div>
</asp:Content>
