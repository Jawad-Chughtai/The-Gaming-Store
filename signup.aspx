<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="The_Gaming_Store.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="container">
        <img src="img/icon/user-icon2.png" />
        <div class="login-form">
            <h1>Signup Here</h1>
            <section>
                <div class="login-form-control">
                    <input type="text" name="fullname" id="text_fullname" placeholder="Full name" runat="server" />
                </div>
                <div class="login-form-control">
                    <input type="email" name="email" id="text_email" placeholder="Email" runat="server" />
                </div>
                <div class="login-form-control">
                    <input type="password" name="password" id="text_password" placeholder="Password" runat="server" onchange="checkPass();" />
                </div>
                <div class="login-form-control">
                    <input type="password" name="password" id="text_confirm_password" placeholder="Confirm Password" runat="server" onchange="checkPass();" />
                    <span id="message" style="color: red;"></span>
                </div>
                <div class="login-form-control">
                    <input type="text" name="address" id="text_address" placeholder="Address" runat="server" />
                </div>
                <div class="login-form-control">
                    <input type="tel" class="area-code" value="+92" readonly="true" />
                    <input type="tel" name="contact" id="text_contact" class="text_phone" placeholder="3xxxxxxxxx" runat="server"/>
                </div>
            </section>
            <section>
                <div class="login-form-control">
                    <input type="submit" class="btn" value="Signup" runat="server" id="btn_signup" onserverclick="btn_signup_ServerClick" />
                </div>
                <div class="login-form-link">
                    <a href="login.aspx">Already have an account?</a>
                </div>
            </section>
        </div>
    </div>
    <script>
        function checkPass()
        {
            var pass = document.getElementById("<%= text_password.ClientID %>").value;
            var con = document.getElementById("<%= text_confirm_password.ClientID %>").value;

            if(pass == con)
            {
                message.innerHTML = "";
            }
            else
            {
                message.innerHTML = "<p>Passwords do not match.</p>";
            }
        }
    </script>
</asp:Content>
