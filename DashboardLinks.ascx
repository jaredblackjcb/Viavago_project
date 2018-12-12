<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DashboardLinks.ascx.cs" Inherits="DashboardLinks" %>
<div class="user-profile-menu-wrap fl-wrap">
    <!-- user-profile-menu-->
    <div class="user-profile-menu">
        <h3>Main</h3>
        <ul>
            <%--<li><a href="Dashboard.aspx" class="user-profile-act"><i class="fa fa-gears"></i>Dashboard</a></li>--%>
            <li><a href="EditProfile.aspx"><i class="fa fa-user-o"></i>Edit Profile</a></li>
            <li><a href="Messages.aspx"><i class="fa fa-envelope-o"></i>Messages <span>3</span></a></li>
            <li><a href="ChangePassword.aspx"><i class="fa fa-unlock-alt"></i>Change Password</a></li>
        </ul>
    </div>
    <!-- user-profile-menu end-->
    <!-- user-profile-menu-->
    <div class="user-profile-menu">
        <h3>Listings</h3>
        <ul>
            <li><a href="MyTours.aspx"><i class="fa fa-th-list"></i>My Tours  </a></li>
            <li><a href="Bookings.aspx"><i class="fa fa-calendar-check-o"></i>Bookings <span>2</span></a></li>
            <li><a href="Reviews.aspx"><i class="fa fa-comments-o"></i>Reviews </a></li>
            <li><a href="NewTour.aspx"><i class="fa fa-plus-square-o"></i>Add New Tour</a></li>
        </ul>
    </div>

</div>
