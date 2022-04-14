<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="The_Gaming_Store.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/checkout.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <div class="img">
            <img src="img/icon/cart.png" />
        </div>
        <asp:Table CssClass="table-css" ID="table" runat="server">
            <asp:TableHeaderRow CssClass="header-row">
                <asp:TableHeaderCell></asp:TableHeaderCell>
                <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                <asp:TableHeaderCell>Price</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
        <div class="btn-div">
            <input type ="submit" class="btn" value="Place Order" runat="server" id="btn_order" onserverclick="btn_order_ServerClick"/>
        </div>
    </div>
</asp:Content>
