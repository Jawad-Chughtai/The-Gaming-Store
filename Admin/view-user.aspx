<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="view-user.aspx.cs" Inherits="The_Gaming_Store.Admin.view_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>View Users</h3>

    <asp:GridView runat="server" ID="userview" CssClass="gridview" HeaderStyle-CssClass="gridview_header" RowStyle-CssClass="gridview_row" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="user_id"></asp:BoundField>
            <asp:BoundField DataField="user_full_name" HeaderText="Full Name" SortExpression="user_full_name"></asp:BoundField>
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username"></asp:BoundField>
            <asp:BoundField DataField="user_password" HeaderText="Password" SortExpression="user_password"></asp:BoundField>
            <asp:BoundField DataField="user_contact" HeaderText="Contact" SortExpression="user_contact"></asp:BoundField>
            <asp:BoundField DataField="user_type" HeaderText="Type" SortExpression="user_type"></asp:BoundField>
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT [user_id], [user_full_name], [username], [user_password], [user_contact], [user_type] FROM [tbl_User]"></asp:SqlDataSource>
</asp:Content>
