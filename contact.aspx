<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="The_Gaming_Store.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
    <style>
        footer {
            position: absolute;
            bottom: 0;
        }
        #login{
            display: block;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <img src="img/icon/feedback.png" />
        <div class="login-form">
            <h1>Help us become better!</h1>
            <section>
                <div class="login-form-control">
                    <input type="email" name="email" id="text_email" placeholder="Email" runat="server" />
                </div>
                <div class="login-form-control">
                    <textarea id="text_feedback" class="text_feedback" placeholder="Provide us with your valuable feedback." runat="server"></textarea>
                </div>
            </section>
            <section>
                <div class="login-form-control">
                    <input type="submit" runat="server" id="btn_send_feedback" value="Send Feedback" class="btn" onserverclick="btn_send_feedback_ServerClick" />
                </div>
            </section>
        </div>
    </div>
</asp:Content>
