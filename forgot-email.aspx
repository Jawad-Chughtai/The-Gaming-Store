<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="forgot-email.aspx.cs" Inherits="The_Gaming_Store.forgot_email" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
    <style>
        footer{
            position: absolute;
            bottom: 0;
        }
        h2{
            color: white;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <img src="img/icon/oops.png" />
        <div class="login-form">
            <section>
                <div class="login-form-control">
                    <h2>Account can not be recovered without Email.</h2>
                </div>
            </section>
            <section>
                <div class="login-form-control">
                    <a href="index.aspx" name="go-back" id="btn-go-back" class="btn">Go Back</a>
                </div>
                <div class="login-form-link">
                    <a href="forgot-password.aspx">Remember Email?</a>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
