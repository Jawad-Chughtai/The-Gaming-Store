<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="message.aspx.cs" Inherits="The_Gaming_Store.Admin.message" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Messages</h3>

    <asp:GridView ID="table_message" runat="server" CssClass="gridview" HeaderStyle-CssClass="gridview_header" RowStyle-CssClass="gridview_row" AutoGenerateColumns="False" DataKeyNames="feedback_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="feedback_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="feedback_id"></asp:BoundField>
            <asp:BoundField DataField="feedback_email" HeaderText="Email" SortExpression="feedback_email"></asp:BoundField>
            <asp:BoundField DataField="feedback_description" HeaderText="Description" SortExpression="feedback_description"></asp:BoundField>
            <asp:BoundField DataField="feedback_status" HeaderText="Status" SortExpression="feedback_status" ItemStyle-ForeColor="Blue"></asp:BoundField>
        </Columns>

    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT [feedback_id], [feedback_email], [feedback_description], [feedback_status] FROM [tbl_Feedback] ORDER BY [feedback_status] DESC"></asp:SqlDataSource>
</asp:Content>
