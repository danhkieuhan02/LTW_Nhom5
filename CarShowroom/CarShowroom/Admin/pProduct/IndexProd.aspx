<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Layout.Master" AutoEventWireup="true" CodeBehind="IndexProd.aspx.cs" Inherits="CarShowroom.Admin.pProduct.IndexProd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderText" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">

    <h1 class="text-center">Danh Sách Xe</h1>
    <div class="mt-3">
        <a href="Create.aspx" class="btn btn-outline-dark">Thêm</a>
    </div>
    <br />
    <form runat="server">
        <asp:Label ID="lblMesg" runat="server" CssClass="text-success"></asp:Label>
        <table class="table table-bordered table-hover text-center">
        <thead>
            <tr>
                <th>Id</th>
                <th>Tên Xe</th>
                <th>Ảnh Bìa</th>
                <th>Giá</th>
                <th>Danh Mục</th>
                <th>Chức Năng</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="repeaterProduct" runat="server">
                <ItemTemplate>
                    <tr>

                <td><%# Eval("Id") %></td>
                <td><%# Eval("ProductName")%></td>
                <td>
                    <img src="<%# Eval("CoverImg") %>" style="width: 50px; height: 50px; object-fit: cover;" class="rounded rounded-circle shadow" />
                </td>
                <td><%# String.Format("{0:N0}", Eval("Price"))%></td>
                <td><%# Eval("Category.catName")%></td>
                <td>
                    <a href="Edit.aspx?IdProd=<%#Eval("Id") %>" class="btn btn-outline-dark">Sửa</a>
                    <asp:LinkButton ID="btnDel" OnClientClick="return confirm('Bạn có muốn xóa sản phẩm này?')" 
                        CommandArgument=<%# Eval("Id") %> OnClick="btnDel_Click" CssClass="btn btn-outline-dark" runat="server">Xóa</asp:LinkButton>
                </td>
            </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    </form>
</asp:Content>
