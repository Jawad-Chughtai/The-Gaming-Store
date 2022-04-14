<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="sub-categories.aspx.cs" Inherits="The_Gaming_Store.Admin.sub_categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h3>New Sub-Category</h3>

    <div class="form-container">
        <h2>Category Details</h2>

        <div class="form">
            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_sub_category">Sub-Category Name :</label>
                </div>
                <div class="form-group-control">
                    <input type="text" id="text_sub_category" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <div class="form-group-label">
                    <label for="ddl_category">Category Name :</label>
                </div>
                <div class="form-group-control">
                    <asp:DropDownList ID="ddl_category" CssClass="drop_down" runat="server" DataSourceID="SqlDataSource1" DataTextField="cat_name" DataValueField="cat_id" ></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT [cat_id], [cat_name] FROM [tbl_Categories]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="form-group">
                <div class="form-group-label">
                </div>
                <div class="form-group-control">
                    <button id="btn_add_sub_category" runat="server" onserverclick="btn_add_sub_category_ServerClick">Add Sub-Category</button>
                </div>
            </div>
        </div>
    </div>

    <h3>All Sub-Categories</h3>

    <asp:GridView ID="grid_subcat" runat="server" CssClass="gridview" HeaderStyle-CssClass="gridview_header" RowStyle-CssClass="gridview_row" AutoGenerateColumns="False" DataKeyNames="sub_cat_id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="sub_cat_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="sub_cat_id"></asp:BoundField>
            <asp:BoundField DataField="sub_cat_name" HeaderText="Sub-Category Name" SortExpression="sub_cat_name"></asp:BoundField>
            <asp:BoundField DataField="cat_id" HeaderText="Category ID" SortExpression="cat_id"></asp:BoundField>
        </Columns>
    </asp:GridView>


    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT * FROM [tbl_SubCat]"></asp:SqlDataSource>
</asp:Content>
