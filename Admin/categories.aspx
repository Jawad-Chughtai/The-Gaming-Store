<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="categories.aspx.cs" Inherits="The_Gaming_Store.Admin.categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>New Category</h3>

    <div class="form-container">
        <h2>Category Details</h2>

        <div class="form">
            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_category">Category Name :</label>
                </div>
                <div class="form-group-control">
                    <input type="text" id="text_category" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <div class="form-group-label">
                </div>
                <div class="form-group-control">
                    <button id="btn_add_category" runat="server" onserverclick="btn_add_category_ServerClick" >Add Category</button>
                </div>
            </div>
        </div>
    </div>

    <h3>All Categories</h3>

    <asp:GridView ID="grid_cat" runat="server" CssClass="gridview" HeaderStyle-CssClass="gridview_header" RowStyle-CssClass="gridview_row" AutoGenerateColumns="False" DataKeyNames="cat_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="cat_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="cat_id"></asp:BoundField>
            <asp:BoundField DataField="cat_name" HeaderText="Category Name" SortExpression="cat_name"></asp:BoundField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT * FROM [tbl_Categories]"></asp:SqlDataSource>
</asp:Content>
