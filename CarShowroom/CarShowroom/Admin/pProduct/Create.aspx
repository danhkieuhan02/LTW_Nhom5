<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Layout.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="CarShowroom.Admin.pProduct.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderText" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <div class="row">
        <div class="col-md-6 m-auto">
            <h3 class="text-center">Create new product</h3>
            <form method="post" enctype="multipart/form-data" runat="server">
                <div class="mt-3">
                    <label class="control-label">Product name</label>
                    <asp:TextBox ID="pName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mt-3">
                    <label class="control-label">Price</label>
                    <asp:TextBox ID="pPrice" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mt-3">
                    <label class="control-label">Content</label>
                    <asp:TextBox ID="pContent" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mt-3">
                    <label class="control-label">Cover Img</label>
                    <asp:FileUpload ID="pCoverImg" CssClass="form-control" runat="server" />
                </div>
                <div class="mt-3">
                    <label class="control-label">Category Id</label>
                    <asp:DropDownList ID="pCatId" CssClass="form-select" runat="server"></asp:DropDownList>
                </div>
                <div class="mt-3">
                    <asp:Button ID="pCreate" runat="server" CssClass="btn btn-outline-dark" Text="Add" OnClick="pCreate_Click" />
                </div>
            </form>
            <br />
            <div>
                <a class="active">Back to List</a>
            </div>
        </div>
    </div>
</asp:Content>
