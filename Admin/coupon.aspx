<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="coupon.aspx.cs" Inherits="The_Gaming_Store.Admin.coupon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>New Coupon</h3>

    <div class="form-container">
        <h2>Category Details</h2>

         <div class="form">
            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_coupon_name">Coupon Title :</label>
                </div>
                <div class="form-group-control">
                    <input type="text" id="text_coupon_name" runat="server" />
                </div>
            </div>
             <div class="form-group">
                 <div class="form-group-label">
                    <label for="text_discount">Discount % :</label>
                </div>
                <div class="form-group-control">
                    <input type="text" id="text_discount" runat="server" />
                </div>
             </div>
             <div class="form-group">
                 <div class="form-group-label">
                    <label for="text_validity">Valid Till :</label>
                </div>
                <div class="form-group-control">
                    <input type="date" id="text_validity" runat="server" />
                </div>
             </div>
            <div class="form-group">
                <div class="form-group-label">
                </div>
                <div class="form-group-control">
                    <button id="btn_add_coupon" runat="server" onserverclick="btn_add_coupon_ServerClick">Add Coupon</button>
                </div>
            </div>
        </div>
    </div>

    <h3>All Coupons</h3>

    <asp:GridView ID="disp_coupon" runat="server" CssClass="gridview" HeaderStyle-CssClass="gridview_header" RowStyle-CssClass="gridview_row" AutoGenerateColumns="False" DataKeyNames="coupon_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="coupon_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="coupon_id"></asp:BoundField>
            <asp:BoundField DataField="coupon_name" HeaderText="Coupon Name" SortExpression="coupon_name"></asp:BoundField>
            <asp:BoundField DataField="coupon_discount" HeaderText="Discount" SortExpression="coupon_discount" DataFormatString="{0:#######}%"></asp:BoundField>
            <asp:BoundField DataField="coupon_validity" HeaderText="Validity" SortExpression="coupon_validity" DataFormatString = "{0:dd/MM/yyyy}"></asp:BoundField>
        </Columns>

    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT [coupon_id], [coupon_name], [coupon_discount], [coupon_validity] FROM [tbl_Coupon]"></asp:SqlDataSource>
</asp:Content>
