<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CarShowroom.Account.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Asset/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <title>Đăng ký tài khoản</title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-4 bg-white-80 m-auto mt-5 rounded">
                <h3 class="mt-3 text-center">Đăng ký tài khoản</h3>
                <div class="mt-3">
                    <label for="Username" class="control-label">Tên đăng nhập</label>
                    <asp:TextBox ID="uName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mt-3">
                    <label for="Email" class="control-label">Email</label>
                    <asp:TextBox ID="uEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mt-3">
                    <label for="Pwd" class="control-label">Mật khẩu</label>
                    <asp:TextBox ID="uPassword" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="my-3 text-center">
                    <asp:Button CssClass="btn btn-outline-dark" ID="Button1" runat="server" Text="Đăng ký" OnClick="Button1_Click" />
                </div>
                    <a href="#" class="nav-link">Đã có tài khoản? Click để quay lại trang đăng nhập.</a>
            </div>
        </div>
    </form>
</body>
</html>
