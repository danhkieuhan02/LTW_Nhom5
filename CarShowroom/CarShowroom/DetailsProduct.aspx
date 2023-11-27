<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetailsProduct.aspx.cs" Inherits="CarShowroom.DetailsProduct" %>
<%@ Register src="Details.ascx" tagname="Details" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <uc1:Details ID="Details2" runat="server" />
    </form>

</asp:Content>
