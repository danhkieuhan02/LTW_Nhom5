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
    <table class="table table-bordered table-hover text-center">
        <thead>
            <tr>
                <th>Id</th>
                <th>Tên Xe</th>
                <th>Hãng</th>
                <th>Ảnh Bìa</th>
                <th>Giá</th>
                <th>Danh Mục</th>
                <th>Chức Năng</th>
            </tr>
        </thead>
        <tbody>
            <% 
                foreach (var items in prodList)
                { 
            %>

            <tr>

                <td><%=items.Id%></td>
                <td><%=items.ProductName%></td>
                <td></td>
                <td>
                    <img src="<%=items.CoverImg%>" style="width: 50px; height: 50px; object-fit: cover;" class="rounded rounded-circle shadow" />
                </td>
                <td><%=string.Format("{0:N0} VND",items.Price)%></td>
                <td><%=items.Category.catName%></td>
                <td>
                    <a href=<%="Edit.aspx?IdProd=" + items.Id%> class="btn btn-outline-dark">Sửa</a>
                    <a href="#" class="btn btn-outline-dark">Xóa</a>
                </td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</asp:Content>
