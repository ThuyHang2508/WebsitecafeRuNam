<%@ Page Title="" Language="C#" MasterPageFile="~/Quanly.Master" AutoEventWireup="true" CodeBehind="Quanly.aspx.cs" Inherits="_13_LeThiThuyHang_5701_WebsitebanhangcafeRuNam.Quanly1" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:YourConnectionString %>"
    SelectCommand="SELECT * FROM YourTable">
</asp:SqlDataSource>
