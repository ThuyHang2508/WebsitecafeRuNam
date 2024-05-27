<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSanPham.Master" AutoEventWireup="true" CodeBehind="Sanpham.aspx.cs" Inherits="_13_LeThiThuyHang_5701_WebsitebanhangcafeRuNam.Sanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="Sanpham">
            <%-- Duyệt qua danh sách sản phẩm và hiển thị thông tin --%>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style4">
                        <asp:DataList ID="DataList1" runat="server" BackColor="" BorderColor="" BorderStyle="None"
                            BorderWidth="1px" CellPadding="4" DataKeyField="MaSanPham" RepeatColumns="4" Width="600px"
                            CellSpacing="30">
                            <ItemTemplate>
                                <div class="item" style="text-align:center">
                                    <asp:Image runat="server" ImageUrl='<%# Eval("Hinhanh") %>' width="250px" Height="300px" />
                                    <br />
                                    <asp:Label runat="server" Text='<%# Eval("TenSanPham") %>' CssClass="product-name"></asp:Label>
                                    <br />
                                    <asp:Label runat="server" Text='<%# Eval("GiaBan", "{0:C}") %>' CssClass="product-price"></asp:Label>
                                    <br />
                                    <br />
                                    <!-- Thêm nút Đặt mua ngay -->
                                  <asp:Button runat="server" Text="Đặt mua ngay" OnClick="DatMuaNgay_Click" CssClass="order-button" />
                                  <asp:Button runat="server" Text="Thêm vào giỏ hàng" OnClick="ThemVaoGioHang_Click" CssClass="add-to-cart-button" />
                                  

                                    <br />
                                    <br />
                                </div>
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        </asp:DataList>
                    </td>
                    <td style="width:5px; background-color:#E9FFCA"></td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
