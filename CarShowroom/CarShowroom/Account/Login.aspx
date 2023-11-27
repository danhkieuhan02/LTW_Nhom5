<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CarShowroom.Account.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="../Asset/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <title>Đăng nhập</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-4 bg-white-80 m-auto mt-5 rounded">
                <h3 class="mt-3 text-center">Đăng nhập</h3>
                <asp:Label ID="lblErrors" CssClass="text-danger" runat="server"></asp:Label>
                <div class="mt-3">
                    <label for="Username" class="control-label">Tên đăng nhập</label>
                    <asp:TextBox ID="uName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mt-3">
                    <label for="Pwd" class="control-label">Mật khẩu</label>
                    <asp:TextBox ID="uPassword" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="my-3 text-center">
                    <asp:Button CssClass="btn btn-outline-dark" ID="BtnLogin" runat="server" Text="Đăng nhập" OnClick="Button1_Click" />
                </div>
                <a href="#" class="nav-link">Chưa có tài khoản? Click để đăng ký tài khoản.</a>
            </div>
        </div>
    </form>
</body>
</html>
