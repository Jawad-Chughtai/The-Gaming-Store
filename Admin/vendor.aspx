<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="vendor.aspx.cs" Inherits="The_Gaming_Store.Admin.vendor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h3>New Vendor</h3>

    <div class="form-container">
        <h2>Vendor Details</h2>

        <div class="form">
            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_vendor_name">Brand Name :</label>
                </div>
                <div class="form-group-control">
                    <input type="text" id="text_vendor_name" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_vendor_email">Brand Email :</label>
                </div>
                <div class="form-group-control">
                    <input type="text" id="text_vendor_email" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_description">Description :</label>
                </div>
                <div class="form-group-control">
                    <textarea id="text_description" name="description" runat="server"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="form-group-label">
                    <label for="vendor_image">Brand Logo :</label>
                </div>
                <div class="form-group-control">
                    <asp:FileUpload ID="vendor_image" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <div class="form-group-label">
                </div>
                <div class="form-group-control">
                    <button id="btn_add_vendor" runat="server" onserverclick="btn_add_vendor_ServerClick">Add Vendor</button>
                </div>
            </div>
        </div>
    </div>

    <h3>All Vendors</h3>


    <asp:GridView ID="vendorview" runat="server" CssClass="gridview" HeaderStyle-CssClass="gridview_header" RowStyle-CssClass="gridview_row" AutoGenerateColumns="False" DataKeyNames="vendor_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="vendor_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="vendor_id"></asp:BoundField>
            <asp:BoundField DataField="vendor_name" HeaderText="Brand Name" SortExpression="vendor_name"></asp:BoundField>
            <asp:BoundField DataField="vendor_email" HeaderText="Brand Email" SortExpression="vendor_email"></asp:BoundField>
            <asp:BoundField DataField="vendor_description" HeaderText="Description" SortExpression="vendor_description"></asp:BoundField>
        </Columns>

    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT [vendor_id], [vendor_name], [vendor_description], [vendor_email] FROM [tbl_Vendor]"></asp:SqlDataSource>
</asp:Content>
