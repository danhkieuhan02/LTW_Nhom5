<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetailsCategory.aspx.cs" Inherits="CarShowroom.DetailsCategory" %>
<%@ Register src="CategoryDetails.ascx" tagname="CategoryDetails" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <uc1:CategoryDetails ID="CategoryDetails1" runat="server" />
    </form>
</asp:Content>
