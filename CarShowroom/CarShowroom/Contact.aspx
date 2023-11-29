<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CarShowroom.Contact1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Asset/css/styleContact.css" rel="stylesheet" />
    <div class="container">
        <div class="row mt-5">
            <h1 class="text-dark text-center mt-5">Liên hệ với chúng tôi</h1>
            <p>Xin vui lòng điền thông tin của bạn và chọn xe ô tô mà bạn quan tâm.</p>
            <form runat="server">
                <asp:Label ID="LabelSuccess" runat="server"></asp:Label>
                <div class="form-group">
                    <label for="name">Họ và tên:</label>
                    <asp:TextBox ID="ctName" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <asp:TextBox ID="ctEmail" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="message">Lời nhắn:</label>
                    <asp:TextBox ID="ctMsg" Rows="4" runat="server"></asp:TextBox>
                </div>
                <div class="mt-2 my-4 text-center">
                    <asp:Button ID="btnSendContact" CssClass="btn btn-outline-info w-auto" runat="server" Text="Gửi" OnClick="btnSendContact_Click" />
                </div>
            </form>
        </div>
    </div>

</asp:Content>
