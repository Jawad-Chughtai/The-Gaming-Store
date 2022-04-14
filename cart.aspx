<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="The_Gaming_Store.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/cart.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <div class="img"><img src="img/icon/cart.png" /></div>
        <div class="cart-container" id="cart_container" runat="server">
            
        </div>

        <div class="cart-container">
            <div class="cart-item" style="margin-top: 20px;">
                <label>Total :</label>
                <input type ="number" class="grand-total" id="grand_total" disabled="disabled" runat="server" />
                <input type="submit" class="btn" id="btn_checkout" value="Proceed to checkout" runat="server" onserverclick="btn_checkout_ServerClick" />
            </div>
        </div>
    </div>
    <script>
        function getID(id) {
            console.log(id);
            window.location.href = "cart.aspx?deleteID=" + id;
        }
    </script>
</asp:Content>
