<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="CarShowroom.Order1" %>

<%@ Register Src="OrderDetails.ascx" TagName="OrderDetails" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:OrderDetails ID="OrderDetails1" runat="server" />
           
        </div>
    </form>
</body>
</html>
