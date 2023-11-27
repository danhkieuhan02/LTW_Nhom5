<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OrderDetails.ascx.cs" Inherits="CarShowroom.OrderDetails" %>
<%-- Hien thi don mua theo id san pham --%>

<h3>Xin chào, đây là thông tin sản phẩm bạn muốn mua:</h3>
Tên xe: <h3><%=inforCar.ProductName %></h3>
         <img src="<%=inforCar.CoverImg %>">
Mô tả: <h3><%=inforCar.Content%></h3>

<h3>Vui lòng nhập thông tin mua hàng:</h3>
Họ tên: <asp:TextBox ID="TextCusName" runat="server"></asp:TextBox>
Số điện thoại: <asp:TextBox ID="TextPhoneNumber" runat="server"></asp:TextBox>
Địa chỉ: <asp:TextBox ID="TextAddress" runat="server"></asp:TextBox>

<a href="<%="/Order.aspx?Id=" + inforCar.Id %>" class="btn btn-outline-info">Mua ngay</a>