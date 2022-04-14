<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-profile.aspx.cs" Inherits="The_Gaming_Store.user_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile | The Gaming Store</title>
    <link rel="icon" type="image/x-icon" href="img/favicon.ico" />
    <link rel="stylesheet" href="admin/css/login.css" />
    <link rel="stylesheet" href="admin/css/forms.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
            <div id="container">

            <div class="heading">
                <a href="index.aspx" style="text-decoration: none;"><h1>The Gaming Store</h1></a>
            </div>

            <div class="form-container">
                <h2>User Profile</h2>
                <div class="login-form">
                    <div class="form-group">
                        <div class="form-group-label">
                            <label for="text_name">Name :</label>
                        </div>
                        <div class="form-group-control">
                            <input type="text" id="text_name" runat="server" disabled="disabled" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="form-group-label">
                            <label for="text_email">Email :</label>
                        </div>
                        <div class="form-group-control">
                            <input type="text" id="text_email" runat="server" disabled="disabled" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-group-label">
                            <label for="text_contact">Contact :</label>
                        </div>
                        <div class="form-group-control">
                            <input type="text" id="text_contact" runat="server" disabled="disabled" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-group-label">
                            <label for="text_address">Address :</label>
                        </div>
                        <div class="form-group-control">
                            <input type="text" id="text_address" runat="server" disabled="disabled" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-group-label">
                        </div>
                        <div class="form-group-control">
                            <button id="btn_admin_login" runat="server" onserverclick="btn_admin_login_ServerClick">Logout</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-group-label">
                        </div>
                        <div class="form-group-control">
                            <a href="index.aspx">Back to Home.</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
