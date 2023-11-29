<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Layout.Master" AutoEventWireup="true" CodeBehind="IndexCat.aspx.cs" Inherits="CarShowroom.Admin.pCategory.IndexCat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderText" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <link href="../../Asset/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <h3 class="text-center">Danh sách danh mục</h3>
    <div class="mt-3">
        <a href="CreateCat.aspx" class="btn btn-outline-dark">Thêm</a>
    </div>
    <br />
    <form runat="server">
        <asp:Label ID="lblSuccess" CssClass="text-success" runat="server"></asp:Label>
        <table class="table table-bordered table-hover text-center">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Tên danh mục</th>
                    <th>Chức năng</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="repeaterCategory" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("Id")%></td>
                            <td><%#Eval("catName") %></td>
                            <td>
                                <a href="EditCat.aspx?IdCat=<%#Eval("Id") %>" class="btn btn-outline-dark">Sửa</a>

                                <asp:LinkButton ID="btnDel" CssClass="btn btn-outline-dark" OnClientClick="return confirm('Bạn có muốn xóa danh mục này?')"
                                    CommandArgument='<%# Eval("Id") %>' OnClick="btnDel_Click" runat="server">Xóa</asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </form>
</asp:Content>
