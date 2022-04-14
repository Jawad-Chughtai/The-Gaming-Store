<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="The_Gaming_Store.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
    <style>
        footer {
            position: absolute;
            bottom: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <img src="img/icon/user-icon2.png" />
        <div class="login-form">
            <h1>Login Here</h1>
            <section>
                <div class="login-form-control">
                    <input type="email" name="email" id="text_email" placeholder="Email" runat="server" />
                </div>
                <div class="login-form-control">
                    <input type="password" name="password" id="text_password" placeholder="Password" runat="server" />
                </div>
            </section>
            <section>
                <div class="login-form-control">
                    <input type="submit" name="login" id="btn_login" value="Login" class="btn" runat="server" onserverclick="btn_login_ServerClick" />
                </div>
                <div class="login-form-link">
                    <a href="forgot-password.aspx">Forgot Password?</a>
                </div>
            </section>
            <section>
                <div class="login-form-control">
                    <a href="signup.aspx" class="btn">Create new Account</a>
                </div>
            </section>
        </div>
    </div>
    <script>
        var input = document.getElementById("<%= text_email.ClientID %>");
        var input2 = document.getElementById("<%= text_password.ClientID %>");
        input.addEventListener("keypress", function (event) {
            if (event.keyCode === 13) {
                event.preventDefault();
                document.getElementById("<%= btn_login.ClientID %>").click();
            }
        });
        input2.addEventListener("keypress", function (event) {
            if (event.keyCode === 13) {
                event.preventDefault();
                document.getElementById("<%= btn_login.ClientID %>").click();
            }
        });
    </script>
</asp:Content>
