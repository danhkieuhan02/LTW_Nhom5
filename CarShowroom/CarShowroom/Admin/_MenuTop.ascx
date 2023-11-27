<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="_MenuTop.ascx.cs" Inherits="CarShowroom.Admin._MenuTop" %>
<nav class="navbar navbar-expand navbar-light navbar-bg">
    <a class="sidebar-toggle js-sidebar-toggle">
        <i class="hamburger align-self-center"></i>
    </a>
    <div>
        <ul>
            <li class="nav-item dropdown">
                <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#"
                    data-bs-toggle="dropdown">
                    <i class="align-middle" data-feather="settings"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-end">
                    <a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1"
                        data-feather="user"></i>Profile</a>
                    <a class="dropdown-item" href="index.html"><i class="align-middle me-1"
                        data-feather="settings"></i>Settings & Privacy</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Log out</a>
                </div>
            </li>
        </ul>
    </div>
</nav>
