<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Category_Create.aspx.cs" Inherits="CarShowroom.Admin.Category_Create" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">
        <div class="col-md-6">
            <h3>Thêm danh mục</h3>
            <div class="mt-3">
                <label>Tên danh mục</label>
                <asp:TextBox ID="TenDanhMuc" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mt-3">
                <asp:Button ID="Button1" runat="server" Text="Thêm mới" 
                    CssClass="btn btn-success" OnClick="Button1_Click" />
            </div>

        </div>

    </div>

</asp:Content>
