<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin-login.aspx.cs" Inherits="The_Gaming_Store.Admin.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | Admin Panel</title>
    <link rel="stylesheet" href="css/login.css" />
    <link rel="stylesheet" href="css/forms.css" />
    <link rel="icon" type="image/x-icon" href="img/favicon.ico" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">

            <div class="heading">
                <h1>Admin Panel</h1>
            </div>

            <div class="form-container">
                <h2>Login</h2>
                <div class="login-form">
                    <div class="form-group">
                        <div class="form-group-label">
                            <label for="text-username">Username :</label>
                        </div>
                        <div class="form-group-control">
                            <input type="text" id="text_username" runat="server" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="form-group-label">
                            <label for="text-password">Password :</label>
                        </div>
                        <div class="form-group-control">
                            <input type="password" id="text_password" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-group-label">
                        </div>
                        <div class="form-group-control">
                            <button id="btn_admin_login" runat="server" onserverclick="btn_admin_login_ServerClick">Login</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-group-label">
                        </div>
                        <div class="form-group-control">
                            <a href="#">Forgot Password?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
