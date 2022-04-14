<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="admin-dashboard.aspx.cs" Inherits="The_Gaming_Store.Admin.admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/admin-dashboard.css" />
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Dashboard</h3>

    <div id="widget-container">

        <a href="view-product.aspx">
            <div class="widget-item">
                <h3>Products</h3>
                <div class="widget-img">
                    <img src="img/icon/icon-product.png" alt="products icon" />
                </div>
                <h3><%= total_products %></h3>
            </div>
        </a>

        <a href="customer.aspx">
            <div class="widget-item">
                <h3>Customers</h3>
                <div class="widget-img">
                    <img src="img/icon/icon-customer.png" alt="customer icon" />
                </div>
                <h3><%= total_customers %></h3>
            </div>
        </a>
        
        <a href="order.aspx">
            <div class="widget-item">
                <h3>Sales</h3>
                <div class="widget-img">
                    <img src="img/icon/icon-sale.png" alt="sales icon" />
                </div>
                <h3><%= total_sales %></h3>
            </div>
        </a>

        <a href="order.aspx">
            <div class="widget-item">
                <h3>Orders</h3>
                <div class="widget-img">
                    <img src="img/icon/icon-order.png" alt="orders icon" />
                </div>
                <h3><%= total_orders %></h3>
            </div>
        </a>
    </div>

    <h3>New Order</h3>

    <asp:GridView ID="order_table" runat="server" CssClass="gridview" HeaderStyle-CssClass="gridview_header" RowStyle-CssClass="gridview_row" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="order_id"></asp:BoundField>
            <asp:BoundField DataField="product_name" HeaderText="Product Name" SortExpression="product_name"></asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" DataFormatString="{0:###,###,###}"></asp:BoundField>
            <asp:BoundField DataField="customer_name" HeaderText="Customer" SortExpression="customer_name"></asp:BoundField>
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" ItemStyle-ForeColor="Blue"></asp:BoundField>
            <asp:ButtonField CommandName="Update" Text="Delivered" ButtonType="Button" ControlStyle-CssClass="btn-field"></asp:ButtonField>
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT o.order_id, o.product_name, o.price, o.[date], o.[status], c.customer_name 
        from db_GamingStore.dbo.tbl_Order o
        inner join db_GamingStore.dbo.tbl_Customer c
        on o.customer_id = c.customer_id
        where o.[status] = 'pending'" UpdateCommand="update [tbl_Order] set [status] = 'Delivered' where ([order_id] = @order_id)">
        <SelectParameters>
            <asp:Parameter DefaultValue="pending" Name="status" Type="String"></asp:Parameter>

        </SelectParameters>
    </asp:SqlDataSource>

    
    <h3>New Messages</h3>

    <asp:GridView ID="message_table" runat="server" CssClass="gridview" HeaderStyle-CssClass="gridview_header" RowStyle-CssClass="gridview_row" AutoGenerateColumns="False" DataKeyNames="feedback_id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="feedback_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="feedback_id"></asp:BoundField>
            <asp:BoundField DataField="feedback_email" HeaderText="Email" SortExpression="feedback_email"></asp:BoundField>
            <asp:BoundField DataField="feedback_description" HeaderText="Description" SortExpression="feedback_description"></asp:BoundField>
            <asp:BoundField DataField="feedback_status" HeaderText="Status" SortExpression="feedback_status" ItemStyle-ForeColor="Blue"></asp:BoundField>
            <asp:ButtonField CommandName="Update" Text="Mark Read" ButtonType="Button" ControlStyle-CssClass="btn-field"></asp:ButtonField>
        </Columns>

    </asp:GridView>



    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT [feedback_id], [feedback_email], [feedback_description], [feedback_status] FROM [tbl_Feedback] WHERE ([feedback_status] = @feedback_status)" UpdateCommand="update [tbl_Feedback] set [feedback_status] = 'Read' where ([feedback_id] = @feedback_id)">
        <SelectParameters>
            <asp:Parameter DefaultValue="unread" Name="feedback_status" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
