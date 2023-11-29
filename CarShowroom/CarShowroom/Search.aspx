<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="CarShowroom.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <div class="container" style="padding-top: 100px">
        <div class="row">
            <% if (ListProduct == null || ListProduct.Count == 0)
               { %>
            <p class="display-4 text-center">Không tìm thấy sản phẩm nào phù hợp</p>
            <%}
               else
               {
            %>
            <p class="display-6 text-center">Kết quả tìm kiếm cho <%=Request.QueryString["keyword"] %></p>
            <%
                   for (int i = 0; i < ListProduct.Count; i++)
                   {
                       var href = "/DetailsProduct.aspx?IdProd=" + ListProduct[i].Id; 
            %>
            <div class="col-md-4">
                <div class="products">
                    <ul class="products">
                        <li>
                            <div class="product-item">
                                <div class="product-top">
                                    <a href="<%=href%>" class="product-thumb">
                                        <img src="<%=ListProduct[i].CoverImg%>">
                                    </a>
                                    <a href="<%=href%>" class="buy-now">xem chi tiết</a>
                                </div>
                                <div class="product-info text-center">
                                    <div>
                                        <a href="<%=href%>" class="btn btn-success"><%=ListProduct[i].Category.catName%></a>
                                        <div class="text-center d-flex">
                                            <a href="Contact.aspx?IdProd=<%= ListProduct[i].Id%>" class="mt-3 w-50 btn btn-outline-primary">Tư vấn</a>
                                            <a href="Order.aspx?IdProd=<%= ListProduct[i].Id%>" class="mt-3 ms-1 w-50 btn btn-outline-info">Mua ngay</a>
                                        </div>
                                    </div>
                                    <a href="<%=href%>" class="product-name"><%=ListProduct[i].ProductName%></a>
                                    <a href="<%=href%>" class="product-price"><%=string.Format("{0:N0} VND", ListProduct[i].Price)%></a>
                                    <a href="<%=href%>" class="product-content"><%=ListProduct[i].Content%></a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <%}
               } %>
        </div>
    </div>

</asp:Content>
