﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CarShowroom._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="x" class="carousel slide">
        <div class="carousel-indicators" data-bs-ride="carousel">
            <button type="button" data-bs-target="#x" data-bs-slide-to="0" class="active" aria-current="true"
                aria-label="Slide 1">
            </button>
            <button type="button" data-bs-target="#x" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#x" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="asset/img/vinfast-home.png" class="d-block w-100">
            </div>
            <div class="carousel-item">
                <img src="asset/img/thanhnhan_auto_mercedes_a_class_chinh_thuc_co_mat_tai_viet_nam_10_1121.jpg"
                    class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="asset/img/imgleft.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#x" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#x" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="m-auto mt-4 sticky-top shadow-sm">
        <nav class="navbar bg-body-tertiary">
            <div class="container-fluid justify-content-center">
                <form class="d-flex" role="search">
                    <input class="form-control me-4" type="options" placeholder="Nhập tên, hãng, dòng xe..."
                        aria-label="Search" />
                    <div class="input-group">
                        <button class="btn btn-outline-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">Danh Mục</button>
                        <ul class="dropdown-menu">
                            <%
                                foreach (var item in Cat)
                                {
                            %>
                            <li><a href='<%="DetailsCategory.aspx?IdProd=" + item.Id%>' class="dropdown-item"><%= item.catName %></a></li>
                            <% 
                                }
                            %>
                        </ul>
                    </div>
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </nav>
    </div>
    <div class="container-fluid mt-3">
        <div class="row">
            <div class="position-relative top-products">
                <img src="asset/img/background-banner-dep.jpg" class="w-100">
                <div class="position-absolute top-0 left-0 w-75 detail">
                    <p>BẠN MUỐN MUA XE</p>
                    <p>
                        Chúng tôi cam kết mang đến những mẫu xe thời thượng trong và ngoài nước, phù hợp với túi
                            tiền.
                    </p>
                    <a href="#" class="btn btn-outline-dark">XEM CHI TIẾT</a>
                </div>
            </div>
            <div class="position-relative new-products">
                <img src="asset/img/background-banner-dep.jpg" class="w-100">
                <div class="position-absolute top-0 left-0 w-75 detail">
                    <p>BẠN MUỐN BÁN XE</p>
                    <p>Tại đây, quý khách hàng sẽ được ưu tiên tư vấn và hỗ trợ mọi thủ tục liên quan.</p>
                    <p></p>
                    <a href="#" class="btn btn-outline-dark">XEM CHI TIẾT</a>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <h3 class="text-center">DÒNG XE NỔI BẬT</h3>
    <p>code hiển thị dòng xe bán chạy nhất</p>
    <%--  <br>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="products">
                    <ul class="products">
                        <li>
                            <div class="product-item">
                                <div class="product-top">
                                    <a href="#" class="product-thumb">
                                        <img src="asset/img/prods_1.jpg">
                                    </a>
                                    <a href="#" class="buy-now">xem chi tiết</a>
                                </div>
                                <div class="product-info">
                                    <a href="#" class="product-cat">BMW</a>
                                    <a href="#" class="product-name">BMW M4 series 2023</a>
                                    <a href="#" class="product-price">48.900$</a>
                                    <a href="#" class="product-content">Test</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>--%>
    <h3 class="text-center">CÁC SẢN PHẨM</h3>
    <br>
    <div class="container">
        <div class="row">
            <% for (int i = 0; i < ListProduct.Count; i++)
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
                                        <img src="<%=ListProduct[i].CoverImg %>">
                                    </a>
                                    <a href="<%=href%>" class="buy-now">xem chi tiết</a>
                                </div>
                                <div class="product-info text-center">
                                    <div>
                                        <a href="<%=href%>" class="btn btn-success"><%=ListProduct[i].Category.catName %></a>
                                        <a href="Order.aspx?IdProd=<%= ListProduct[i].Id%>" class="mt-3 btn btn-outline-primary">Mua ngay</a>
                                    </div>
                                    <a href="<%=href%>" class="product-name"><%=ListProduct[i].ProductName %></a>
                                    <a href="<%=href%>" class="product-price"><%=string.Format("{0:N0} VND",ListProduct[i].Price) %></a>
                                    <a href="<%=href%>" class="product-content"><%=ListProduct[i].Content %></a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <%} %>
        </div>
    </div>
    <div class="service">
        <h3 class="text-center">CÁC DỊCH VỤ
        </h3>
        <br>
        <div class="container text-left">
            <div class="row pb-5">
                <div class="col-md-3 text-center">
                    <div>
                        <img src="asset/img/baohiem.jpg">
                    </div>
                    <h4>BẢO HIỂM Ô TÔ</h4>
                    Sản phẩm dành riêng cho khách hàng mua lần đầu, với dịch vụ 1 cửa về Bảo hiểm, quy trình xử lý
                        chất
                        lượng cao, nhanh chóng.!
                </div>
                <div class="col-md-3 text-center">
                    <div>
                        <img src="asset/img/vayvon.jpg">
                    </div>
                    <h4>HỖ TRỢ VAY VỐN</h4>
                    Các sản phẩm vay mua xe của chúng tôi đáp ứng đa dạng các nhu cầu tài chính của khách hàng!
                </div>

                <div class="col-md-3 text-center">
                    <div>
                        <img src="asset/img/phukien.jpg">
                    </div>
                    <h4>PHỤ TÙNG & PHỤ KIỆN</h4>
                    Tất cả các phụ tùng, phụ kiện chính hãng, được nhập khẩu từ Hàn Quốc và các nước trong khu vực.
                </div>
                <div class="col-md-3 text-center">
                    <div>
                        <img src="asset/img/baoduong.jpg">
                    </div>
                    <h4>DỊCH VỤ BẢO DƯỠNG</h4>
                    Dịch vụ kiểm tra, bảo dưỡng một cách định kỳ để đảm bảo chiếc xe của Khách hàng luôn được vận
                        hành hiệu quả.
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row pb-5 justify-content-center">
                <div class="col-md-3 text-center">
                    <div class="text-center mb-2">
                        <img src="asset/img/suachua.jpg">
                    </div>
                    <h4>DỊCH VỤ SỬA CHỮA</h4>
                    Ngoài dịch vụ bảo dưỡng và sửa chữa những hiện tượng bất thường trên xe, chúng tôi cũng cung cấp
                        dịch vụ sửa chữa đối với
                        những hư hỏng do va chạm mà chiếc xe của Khách hàng gặp phải trong quá trình sử dụng.
                </div>
                <div class="col-md-3 text-center">
                    <div>
                        <img src="asset/img/baohiem2.jpg">
                    </div>
                    <h4>CHÍNH SÁCH BẢO HÀNH</h4>
                    Chính sách mang lại những sửa chữa cần thiết, sử dụng những phụ tùng mới hoặc những phụ tùng tái
                        chế cho xe của Khách
                        hàng nằm trong chế độ được bảo hành.
                </div>
            </div>
        </div>
    </div>
</asp:Content>
