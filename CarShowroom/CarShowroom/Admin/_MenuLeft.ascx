<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="_MenuLeft.ascx.cs" Inherits="CarShowroom.Admin._MenuLeft" %>
<nav id="sidebar" class="sidebar js-sidebar">
    <div class="sidebar-content js-simplebar">
        <a class="sidebar-brand" href="index.html">
            <span class="align-middle">Admin Manage Page</span>
        </a>

        <ul class="sidebar-nav">
            <li class="sidebar-header">Pages
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="index.html">
                    <i class="align-middle" data-feather="sliders"></i><span
                        class="align-middle">Dashboard</span>
                </a>
            </li>

            <li class="sidebar-item active">
                <a class="sidebar-link" href="pages-blank.html">
                    <i class="align-middle" data-feather="book"></i><span class="align-middle">Category</span>
                </a>
            </li>
            <li class="sidebar-item active">
                <a class="sidebar-link" href="/Admin/pProduct/IndexProd.aspx">
                    <i class="align-middle" data-feather="book"></i><span class="align-middle">Product</span>
                </a>
            </li>
            <li class="sidebar-item">
                <a class="sidebar-link" href="pages-profile.html">
                    <i class="align-middle" data-feather="user"></i><span class="align-middle">Profile</span>
                </a>
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="pages-sign-in.html">
                    <i class="align-middle" data-feather="log-in"></i><span class="align-middle">Sign In</span>
                </a>
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="pages-sign-up.html">
                    <i class="align-middle" data-feather="user-plus"></i><span class="align-middle">Sign
							Up</span>
                </a>
            </li>
        </ul>
    </div>
</nav>
