<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="new-user.aspx.cs" Inherits="The_Gaming_Store.Admin.new_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>New User</h3>

    <div class="form-container">

        <h2>User Details</h2>


        <div class="form">


            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_fullname">Full Name :</label>
                </div>
                <div class="form-group-control">
                    <input type="text" id="text_fullname" name="fullname" required="required" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_username">Username :</label>
                </div>
                <div class="form-group-control">
                    <input type="text" id="text_username" name="username" required="required" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_password">Password :</label>
                </div>
                <div class="form-group-control">
                    <input type="password" id="text_password" name="password" required="required" runat="server" onchange="check_pass();" />
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_confirm_password">Confirm Password :</label>
                </div>
                <div class="form-group-control">
                    <input type="password" id="text_confirm_password" name="password" required="required" runat="server" onchange="check_pass();" />
                    <span id="span_message" style="float:right; color: red;"></span>
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_contact">Contact :</label>
                </div>
                <div class="form-group-control">
                    <input type="number" id="text_contact" name="contact" required="required" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_usertype">User Type :</label>
                </div>
                <div class="form-group-control">
                    <input type="text" id="text_usertype" name="usertype" readonly="true" value="User" runat="server"/>
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                    <label for="user_image">User Image :</label>
                </div>
                <div class="form-group-control">
                    <asp:FileUpload ID="user_image" runat="server" aria-required="true" />
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                </div>
                <div class="form-group-control">
                    <button id="btn_new_user" runat="server" onserverclick="btn_new_user_ServerClick">Add User</button>
                </div>
            </div>


        </div>
    </div>

    <script type="text/javascript">
        function check_pass() {
            var pass = document.getElementById("<%= text_password.ClientID %>").value;
            var con = document.getElementById("<%= text_confirm_password.ClientID %>").value;
            if(pass == con)
            {
                span_message.hidden = true;
            }
            else {
                span_message.hidden = false;
                span_message.innerText = "Passwords do not match.";
                return false;
            }
        }

    </script>
</asp:Content>