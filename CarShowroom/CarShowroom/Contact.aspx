<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CarShowroom.Contact1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Asset/css/styleContact.css" rel="stylesheet" />
    <div class="container">
        <div class="row mt-5">
            <h1 class="text-dark text-center mt-5">Trang liên hệ</h1>
            <p>Xin vui lòng điền thông tin của bạn và chọn xe ô tô mà bạn quan tâm.</p>
            <form action="#" method="POST">
                <div class="form-group">
                    <label for="name">Họ và tên:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="phone">Số điện thoại:</label>
                    <input type="tel" id="phone" name="phone" required>
                </div>
                <div class="form-group">
                    <label for="message">Lời nhắn:</label>
                    <textarea id="message" name="message" rows="4" required></textarea>
                </div>
                <div class="form-group">
                    <label for="car">Chọn xe ô tô:</label>
                    <select id="car" name="car" required>
                        <option value="Toyota">Toyota</option>
                        <option value="Honda">Honda</option>
                        <option value="Ford">Ford</option>
                    </select>
                </div>
            </form>
            <table class="table table-hover">
                <h6>Thông tin sản phẩm</h6>
                <thead>
                    <tr>
                        <th>Tên xe</th>
                        <th>Giá</th>
                        <th>Màu</th>
                        <th>Động cơ</th>
                        <th>Hộp số</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Toyota Vios</td>
                        <td>500 triệu</td>
                        <td>Trắng</td>
                        <td>1.5L</td>
                        <td>Tự động</td>
                    </tr>
                    <tr>
                        <td>Honda Civic</td>
                        <td>800 triệu</td>
                        <td>Đen</td>
                        <td>1.8L</td>
                        <td>Tự động</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <form runat="server">
        <div class="mt-2 my-4 text-center">
            <asp:Button ID="btnSendContact" CssClass="btn btn-outline-info w-auto" runat="server" Text="Gửi" />
        </div>
    </form>
</asp:Content>
