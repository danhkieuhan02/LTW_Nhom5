<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OrderDetails.ascx.cs" Inherits="CarShowroom.OrderDetails" %>
<%-- Hien thi don mua theo id san pham --%>
<%--<h3>Xin chào, đây là thông tin sản phẩm bạn muốn mua:</h3>
Tên xe:
<h3><%=inforCar.ProductName %></h3>
<img src="<%=inforCar.CoverImg %>">
Mô tả:
<h3><%=inforCar.Content%></h3>--%>

<%--<h3>Vui lòng nhập thông tin mua hàng:</h3>
Họ tên:
<asp:TextBox ID="TextCusName" runat="server"></asp:TextBox>
Số điện thoại:
<asp:TextBox ID="TextPhoneNumber" runat="server"></asp:TextBox>
Địa chỉ:
<asp:TextBox ID="TextAddress" runat="server"></asp:TextBox>--%>
<%-- code giao dien trang order o day --%>
<link href="Asset/css/styleOrderDetails.css" rel="stylesheet" />
<div class="container">
    <div class="product">
        <img src="<%=inforCar.CoverImg %>" alt="Car" class="product-image">
        <div class="product-info">
            <div class="product-name"><%=inforCar.ProductName %></div>
            <div class="product-price"><%=inforCar.Price%></div>
            <div class="product-description"><%=inforCar.Content%></div>
        </div>
    </div>
    <div class="customer">
        <div class="customer-title">Thông tin khách hàng</div>
        <div class="customer-info">
            <div class="customer-label">Họ và tên:</div>
            <asp:TextBox ID="TextCusName" CssClass="customer-input" runat="server" placeholder="Nhập tên"></asp:TextBox>
        </div>
        <div class="customer-info">
            <div class="customer-label">Số điện thoại:</div>
            <asp:TextBox ID="TextPhoneNumber" CssClass="customer-input" runat="server" placeholder="Nhập số điện thoại"></asp:TextBox>
        </div>
        <div class="customer-info">
            <div class="customer-label">Địa chỉ nhận hàng:</div>
            <asp:TextBox ID="TextAddress" CssClass="customer-input" runat="server" placeholder="Nhập địa chỉ nhận hàng"></asp:TextBox>
        </div>
        <button class="customer-button">Đặt hàng</button>
    </div>
</div>
