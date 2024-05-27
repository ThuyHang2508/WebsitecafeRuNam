<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSanPham.Master" AutoEventWireup="true" CodeBehind="Datmuangay.aspx.cs" Inherits="_13_LeThiThuyHang_5701_WebsitebanhangcafeRuNam.Datmuangay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        form div {
            margin-left: 200px;
        }

        h2 {
            color: white;
        }

        label {
            display: block;
            margin-bottom: 10px; /* Giảm khoảng cách dưới nhãn */
            color: white;
        }

        input[type="text"] {
            width: 200px;
            display: inline-block;
            vertical-align: middle;
            line-height: 1.5;
            font-size: 30px;
            margin-bottom: 20px; /* Khoảng cách giữa ô nhập liệu và nút Đặt hàng */
        }
    </style>

    <form runat="server">
        <div>
            <h2>Thông Tin Nhận Hàng</h2>

            <label for="txtHoTen">Họ và tên:</label>
            <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>

            <label for="txtDiaChi">Địa chỉ nhận hàng:</label>
            <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>

            <label for="txtSoDienThoai">Số điện thoại:</label>
            <asp:TextBox ID="txtSoDienThoai" runat="server"></asp:TextBox>

            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Đặt hàng" OnClick="btnSubmit_Click" style="font-size: 20px;" />
            <br />
            <br />
          <asp:Label ID="lblMessage" runat="server" EnableViewState="false" style="font-size: 30px; color: #08efce;"></asp:Label>

            <br />
            <br />
        </div>
    </form>
</asp:Content>
