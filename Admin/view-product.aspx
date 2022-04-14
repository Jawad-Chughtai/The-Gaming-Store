<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="view-product.aspx.cs" Inherits="The_Gaming_Store.Admin.view_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>View Products</h3>

    <asp:GridView ID="gridview_product" runat="server" CssClass="gridview" HeaderStyle-CssClass="gridview_header" RowStyle-CssClass="gridview_row" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="product_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="product_id"></asp:BoundField>
            <asp:BoundField DataField="product_name" HeaderText="Name" SortExpression="product_name"></asp:BoundField>
            <asp:BoundField DataField="cat_id" HeaderText="Category" SortExpression="cat_id"></asp:BoundField>
            <asp:BoundField DataField="sub_cat_id" HeaderText="Sub-Category" SortExpression="sub_cat_id"></asp:BoundField>
            <asp:BoundField DataField="product_price" HeaderText="Price" SortExpression="product_price" DataFormatString="{0:###,###,###}"></asp:BoundField>
            <asp:BoundField DataField="product_stock" HeaderText="Stock" SortExpression="product_stock"></asp:BoundField>
            <asp:BoundField DataField="product_description" HeaderText="Description" SortExpression="product_description"></asp:BoundField>
            <asp:BoundField DataField="vendor_id" HeaderText="Vendor" SortExpression="vendor_id"></asp:BoundField>
            <asp:BoundField DataField="product_date" HeaderText="Date" SortExpression="product_date" DataFormatString = "{0:dd/MM/yyyy}" ></asp:BoundField>
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT [product_id], [product_name], [cat_id], [sub_cat_id], [product_price], [product_stock], [product_description], [vendor_id], [product_date], [product_img] FROM [tbl_Product]"></asp:SqlDataSource>
</asp:Content>
