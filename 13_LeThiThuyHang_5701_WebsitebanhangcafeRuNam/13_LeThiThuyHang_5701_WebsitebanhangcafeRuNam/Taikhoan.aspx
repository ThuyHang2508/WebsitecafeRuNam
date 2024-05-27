<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Taikhoan.aspx.cs" Inherits="_13_LeThiThuyHang_5701_WebsitebanhangcafeRuNam.Taikhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
          
        .login-container {
            text-align: center; /* Căn giữa theo chiều ngang */
            margin-top: 50px; /* Khoảng cách từ đỉnh trang */
        }

        .login-input {
            margin-bottom: 10px; /* Khoảng cách giữa các trường nhập liệu */
        }

        .login-button {
            margin-left: 20px; /* Đẩy nút về bên phải */
            background-color: #a5f6f6; /* Màu xám */
            color: #000000; /* Màu chữ trắng */
            border: none; /* Loại bỏ đường viền */
            padding: 8px 16px; /* Kích thước padding nhỏ hơn */
            text-align: center;
            display: inline-block;
            font-size: 16px; /* Giảm kích thước chữ */
            cursor: pointer;
            text-decoration: none;
        }

        .login-input label {
            color: white; /* Màu chữ trắng */
            font-size: 18px; /* Kích thước chữ */
            display: block; /* Để label hiển thị trên một dòng riêng biệt */
        }

        .label-style {
            color: white; /* Màu chữ trắng */
            font-size: 18px; /* Kích thước chữ lớn hơn */
            margin-bottom: 10px; 
        }

        .label2-style {
            color: white; /* Màu chữ trắng */
            font-size: 18px; /* Kích thước chữ lớn hơn */
            margin-bottom: 10px; /* Khoảng cách dưới chữ */
    
        }
        .login-input input {
            padding: 12px; /* Kích thước padding để làm cho ô nhập liệu lớn hơn */
            width: 200px; /* Ô nhập liệu chiếm toàn bộ chiều rộng của parent */
        }
            .login1-button {
        background-color: #a69e9e; /* Màu nền giống với các nút khác */
        color: #000000; /* Màu chữ trắng */
        border: none; /* Loại bỏ đường viền */
        padding: 7px 14px; /* Kích thước padding giống với các nút khác */
        text-align: center;
        display: inline-block;
        font-size: 18px; /* Tăng kích thước chữ */
        font-weight: bold; /* In đậm chữ */
        margin: 5px;
        cursor: pointer;
        text-decoration: none;
        margin-left: 20px; /* Dịch nút về bên trái */
          border-radius: 5px; 
             }
         .DKY-button {
          font-size: 18px; /* Kích thước chữ lớn hơn */
          text-decoration: none; /* Loại bỏ gạch chân dưới */
          padding: 7px 14px; /* Kích thước padding để làm cho nút lớn hơn */
         background-color: #a69e9e; /* Màu nền giống với các nút khác */
         color: #000000; /* Màu nền xám nhạt */
          border-radius: 5px; /* Bo tròn góc */
          display: inline-block; /* Hiển thị dạng khối */
          font-weight: bold;
         }

    </style>

    <form runat="server">
        <div class="login-container">
            <div class="login-input">
                <asp:Label runat="server" ID="lblMessage" Text="" ForeColor="Red"></asp:Label>
                <br />
                <br />
               <asp:Label runat="server" Text="Tài khoản" CssClass="label-style"></asp:Label>

                <asp:TextBox ID="txtUsername" runat="server" placeholder="Nhập tên đăng nhập"></asp:TextBox>
            </div>
            <br />
           
            <div class="login-input">
                <asp:Label runat="server" Text="Mật khẩu " CssClass="label2-style"></asp:Label>

                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Nhập mật khẩu"></asp:TextBox>
            </div>
            <br />
            <asp:HyperLink runat="server" NavigateUrl="Dangky.aspx" CssClass="DKY-button" Text="Đăng ký"></asp:HyperLink>

          <%--  <a class="DKY-button" href="Dangky.aspx">Đăng ký</a>--%>
            <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" OnClick="btnLogin_Click" CssClass="login1-button" />
            <br>
            <br />
        </div>
    </form>
</asp:Content>
