<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="forgot-password.aspx.cs" Inherits="The_Gaming_Store.password_reset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
    <style>
        footer{
            position: absolute;
            bottom: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <img src="img/icon/user-icon2.png" />
        <div class="login-form">
            <h1>Reset Password</h1>
            <section>
                <div class="login-form-control">
                    <input type="email" name="email" id="text-email" placeholder="Enter your email" />
                </div>
            </section>
            <section>
                <div class="login-form-control">
                    <input type="submit" name="reset" id="btn-reset" value="Reset" class="btn" />
                </div>
                <div class="login-form-link">
                    <a href="forgot-email.aspx">Forgot Email?</a>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
