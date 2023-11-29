<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoryDetails.ascx.cs" Inherits="CarShowroom.CategoryDetails" %>
<%-- Hien thi list san pham theo danh muc --%>
<div class="container" style="padding-top: 100px">
    <div class="row">
        <% if (listProd.Count == 0)
           {%>
        <p class="text-center display-5">Không có sản phẩm nào thuộc danh mục này</p>

        <%
           }
           else
           {

               for (int i = 0; i < listProd.Count; i++)
               {
                   var href = "DetailsCategory.aspx?IdProd=" + listProd[i].Id;
                   var hrefProd = "/DetailsProduct.aspx?IdProd=" + listProd[i].Id; 
        %>
        <div class="col-md-4">
            <div class="products">
                <ul class="products">
                    <li>
                        <div class="product-item">
                            <div class="product-top">
                                <a href="<%=href%>" class="product-thumb">
                                    <img src="<%=listProd[i].CoverImg %>">
                                </a>
                                <a href="<%=hrefProd%>" class="buy-now">xem chi tiết</a>
                            </div>
                            <div class="product-info text-center">
                                <a href="<%=href%>" class="btn btn-success"><%=listProd[i].Category.catName %></a>
                                <a href="<%=href%>" class="product-name"><%=listProd[i].ProductName %></a>
                                <a href="<%=href%>" class="product-price"><%=string.Format("{0:N0} VND",listProd[i].Price) %></a>
                                <a href="<%=href%>" class="product-content"><%=listProd[i].Content %></a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <%
           }
        }
        %>
    </div>
</div>
