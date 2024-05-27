<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="_13_LeThiThuyHang_5701_WebsitebanhangcafeRuNam.Giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .product-container {
            text-align: center;
            margin-left: 50px; /* Cách lề trái 10px */
            margin-bottom: 20px; /* Khoảng cách giữa các sản phẩm */
            display: inline-block;
        }

        .product-name {
            font-weight: bold;
            color: white; /* Màu chữ là màu trắng */
            font-size: 20px; /* Kích thước chữ tên sản phẩm */
        }

        .product-price {
            color: white; /* Màu của giá sản phẩm */
            font-size: 20px; /* Kích thước chữ giá sản phẩm */
        }

        .product-image {
            width: 150px; /* Kích thước rộng của hình ảnh */
            height: 170px; /* Kích thước cao của hình ảnh */
        }
    </style>

    <div>
        <h2 style="text-align: center; color: white; font-size: 30px;">Danh sách sản phẩm trong giỏ hàng</h2>

        <asp:Repeater ID="rptGioHang" runat="server">
            <ItemTemplate>
                <div class="product-container">
                    <!-- Hiển thị thông tin sản phẩm trong giỏ hàng -->
                    <asp:Image runat="server" ImageUrl='<%# Eval("Hinhanh") %>' CssClass="product-image" />
                    <br />
                    <asp:Label runat="server" Text='<%# Eval("TenSanPham") %>' CssClass="product-name"></asp:Label>
                    <br />
                    <asp:Label runat="server" Text='<%# Eval("GiaBan", "{0:C}") %>' CssClass="product-price"></asp:Label>
                    <br />
                    <br />
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <asp:Literal ID="litThongBao" runat="server" Visible="false"></asp:Literal>
    </div>
</asp:Content>
