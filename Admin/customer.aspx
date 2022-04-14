<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="The_Gaming_Store.Admin.customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>View Customers</h3>

    <asp:GridView ID="view_customer" runat="server" CssClass="gridview" HeaderStyle-CssClass="gridview_header" RowStyle-CssClass="gridview_row" AutoGenerateColumns="False" DataKeyNames="customer_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="customer_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="customer_id"></asp:BoundField>
            <asp:BoundField DataField="customer_name" HeaderText="Name" SortExpression="customer_name"></asp:BoundField>
            <asp:BoundField DataField="customer_email" HeaderText="Email" SortExpression="customer_email"></asp:BoundField>
            <asp:BoundField DataField="customer_contact" HeaderText="Contact" SortExpression="customer_contact"></asp:BoundField>
            <asp:BoundField DataField="customer_address" HeaderText="Address" SortExpression="customer_address"></asp:BoundField>
            <asp:BoundField DataField="customer_status" HeaderText="Status" SortExpression="customer_status"></asp:BoundField>
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT [customer_id], [customer_name], [customer_email], [customer_contact], [customer_address], [customer_status], [customer_card] FROM [tbl_Customer]"></asp:SqlDataSource>
</asp:Content>
