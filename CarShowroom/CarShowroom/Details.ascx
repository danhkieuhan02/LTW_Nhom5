<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Details.ascx.cs" Inherits="CarShowroom.Details" %>
<%--<img src='<%="/Asset/img/"+inforCar.CoverImg%>' width="200px" height="200px" />
    <br />
    Price: <% =inforCar.Price %>
    <br />
    <div>
        Content: <%=inforCar.Content %>
    </div>--%>
<link href="Asset/css/styleDetails.css" rel="stylesheet" />
<div class="row">
    <div class="mt-5">
        <div class="product">
            <img class="image" src="<%=inforCar.CoverImg%>" alt="Car image">
            <div class="info">
                <div class="name"><%=inforCar.ProductName%></div>
                <div class="price"><%=string.Format("{0:N0} VND",inforCar.Price)%></div>
                <div class="description"><%=inforCar.Content %></div>
                <div class="mt-1 mb-3">
                    <asp:Button ID="Button1" CssClass="btn btn-outline-info" runat="server" Text="Tư vấn" />
                    <asp:Button ID="Button2" CssClass="btn btn-outline-primary" runat="server" Text="Mua ngay" OnClick="Button2_Click" />
                </div>
                <div class="d-flex justify-content-between">
                    <ul class="list-unstyled" style="width: 49%">
                        <li>
                            <div class="info-label">
                                <img alt="Hãng xe" src="Asset/icon/hangxe.png">
                                Hãng xe
                            </div>
                            <div itemprop="brand" class="info-show">
                                Rolls Royce
                            </div>
                        </li>
                        <li>
                            <div class="info-label">
                                <img alt="Tình trạng xe" src="Asset/icon/tinhtrangxe.png">
                                Tình trạng xe
                            </div>
                            <div class="info-show">
                                Mới (<span id="show-so-km">0</span> km)
                            </div>
                        </li>
                        <li>
                            <div class="info-label">
                                <img alt="Dòng xe" src="Asset/icon/dongxe.png">
                                Dòng xe
                            </div>
                            <div class="info-show">
                                Khác
                            </div>
                        </li>
                        <li>
                            <div class="info-label">
                                <img alt="Năm sản xuất" src="Asset/icon/namsanxuat.png">
                                Năm sản xuất
                            </div>
                            <div class="info-show">
                                2022
                            </div>
                        </li>
                        <li>
                            <div class="info-label">
                                <img alt="Hộp số" src="Asset/icon/hopso.png">
                                Hộp số
                            </div>
                            <div class="info-show">
                                Tự động
                            </div>
                        </li>
                    </ul>
                    <ul class="list-unstyled" style="width: 49%">
                        <li>
                            <div class="info-label">
                                <img alt="Nhiên liệu" src="Asset/icon/nhienlieu.png">
                                Nhiên liệu
                            </div>
                            <div class="info-show">
                                Xăng
                            </div>
                        </li>
                        <li>
                            <div class="info-label">
                                <img alt="Xuất xứ" src="Asset/icon/xuatxu.png">
                                Xuất xứ
                            </div>
                            <div class="info-show">
                                Mỹ
                            </div>
                        </li>
                        <li>
                            <div class="info-label">
                                <img alt="Kiểu dáng" src="Asset/icon/kieudang.png">
                                Kiểu dáng
                            </div>
                            <div class="info-show">
                                SUV / Cross over
                            </div>
                        </li>
                        <li>
                            <div class="info-label">
                                <img alt="Số chỗ" src="Asset/icon/socho.png">
                                Số chỗ
                            </div>
                            <div class="info-show">
                                4
                            </div>
                        </li>
                        <li>
                            <div class="info-label">
                                <img alt="Màu sắc" src="Asset/icon/mausac.png">
                                Màu sắc
                            </div>
                            <div class="info-show">
                                Đen
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
