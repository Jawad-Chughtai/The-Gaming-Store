<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="The_Gaming_Store.Admin.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Orders</h3>

    <asp:GridView ID="table_orders" runat="server" CssClass="gridview" HeaderStyle-CssClass="gridview_header" RowStyle-CssClass="gridview_row" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="order_id"></asp:BoundField>
            <asp:BoundField DataField="product_name" HeaderText="Product" SortExpression="product_name"></asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price"  DataFormatString="{0:###,###,###}"></asp:BoundField>
            <asp:BoundField DataField="customer_name" HeaderText="Customer" SortExpression="customer_name"></asp:BoundField>
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" ItemStyle-ForeColor="Blue"></asp:BoundField>
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT o.order_id, o.product_name, o.price, o.[date], o.[status], c.customer_name
        from db_GamingStore.dbo.tbl_Order o
        inner join db_GamingStore.dbo.tbl_Customer c
        on o.customer_id = c.customer_id order by [status] desc">
    </asp:SqlDataSource>
</asp:Content>
