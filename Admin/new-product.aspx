<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin-master.Master" AutoEventWireup="true" CodeBehind="new-product.aspx.cs" Inherits="The_Gaming_Store.Admin.new_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/forms.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>New Product</h3>

    <div class="form-container">

        <h2>Product Details</h2>


        <div class="form">

            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_product_name">Product Name :</label>
                </div>
                <div class="form-group-control">
                    <input type="text" id="text_product_name" name="name" runat="server"/>
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_price">Price :</label>
                </div>
                <div class="form-group-control">
                    <input type="number" id="text_price" name="price" runat="server"/>
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_stock">Stock :</label>
                </div>
                <div class="form-group-control">
                    <input type="number" id="text_stock" name="stock" runat="server"/>
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                    <label for="ddl_category">Category :</label>
                </div>
                <div class="form-group-control">
                    <asp:DropDownList ID="ddl_category" runat="server" DataSourceID="SqlDataSource1" DataTextField="cat_name" DataValueField="cat_id" CssClass="drop_down" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT [cat_id], [cat_name] FROM [tbl_Categories]"></asp:SqlDataSource>
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                    <label for="ddl_subcat">Sub-Category :</label>
                </div>
                <div class="form-group-control" id="subcategory">
                    <asp:DropDownList ID="ddl_subcat" runat="server" DataSourceID="SqlDataSource2" DataTextField="sub_cat_name" DataValueField="sub_cat_id" CssClass="drop_down"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT [sub_cat_name], [sub_cat_id] FROM [tbl_SubCat] WHERE ([cat_id] = @cat_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddl_category" PropertyName="SelectedValue" Name="cat_id" Type="Int32"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_vendor">Brand :</label>
                </div>
                <div class="form-group-control">
                    <asp:DropDownList ID="ddl_vendor" runat="server" DataSourceID="SqlDataSource3" DataTextField="vendor_name" DataValueField="vendor_id" CssClass="drop_down"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:DB_TheGamingStoreConnectionString %>' SelectCommand="SELECT [vendor_id], [vendor_name] FROM [tbl_Vendor]"></asp:SqlDataSource>
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

            <input type="date" style="display: none"  id="product_date" runat="server" />


            <div class="form-group">
                <div class="form-group-label">
                    <label for="text_product_image">Product Image :</label>
                </div>
                <div class="form-group-control">
                    <asp:FileUpload ID="prod_image" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <div class="form-group-label">
                </div>
                <div class="form-group-control">
                    <button id="btn_add_product" runat="server" onserverclick="btn_add_product_ServerClick">Add Product</button>
                </div>
            </div>


        </div>
    </div>
    <script>
        document.getElementById("<%= product_date.ClientID %>").valueAsDate = new Date();
    </script>
</asp:Content>
