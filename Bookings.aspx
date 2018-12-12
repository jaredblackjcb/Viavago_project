<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.Master" AutoEventWireup="true" CodeFile="Bookings.aspx.cs" Inherits="Bookings" %>

<%@ Register Src="~/DashboardLinks.ascx" TagPrefix="uc1" TagName="DashboardLinks" %>
<%@ Register Src="~/ToolbarHeader.ascx" TagPrefix="uc1" TagName="ToolbarHeader" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">

    <!--content -->
    <div class="content">
        <!--section -->
        <section id="sec1">
            <!-- container -->
            <div class="container">
                <!-- profile-edit-wrap -->
                <div class="profile-edit-wrap">
                    <div class="profile-edit-page-header">
                        <h2>Bookings</h2>
                        <uc1:ToolbarHeader runat="server" ID="ToolbarHeader" />
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="fixed-bar fl-wrap">
                                <uc1:DashboardLinks runat="server" ID="DashboardLinks" />
                            </div>
                        </div>
                        <div class="col-md-9">
                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:5050_Viavago %>' SelectCommand="SELECT [BookingID], b.[UserID], b.[TourID], [BookingDate], [BookingStatus], [NumberOfPeople], u.ProfileImg, u.FirstName + ' ' + u.LastName AS FullName, u.UserName AS Email, ti.TourName FROM Users u JOIN  [Bookings] b ON b.UserID = u.UserID JOIN Tour_Information ti ON b.TourID = ti.TourID"></asp:SqlDataSource>
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                                <LayoutTemplate>
                                    <div class="dashboard-list-box fl-wrap">
                                        <div class="dashboard-header fl-wrap">
                                            <h3>Bookings</h3>
                                        </div>
                                        <!-- dashboard-list end-->
                                        <div runat="server" id="ItemPlaceHolder"></div>
                                    </div>
                                    <!-- dashboard-list end-->

                                    </div>
                                </LayoutTemplate>
                                <ItemTemplate>
                                    <div class="dashboard-list">
                                        <span class="new-dashboard-item">New</span>
                                        <div class="dashboard-message-avatar">
                                            <img src='<%# Eval("ProfileImg","~/ProfileImages/{0}") %>' alt="">
                                        </div>
                                        <div class="dashboard-message-text">
                                            <h4><%# Eval("FullName") %> - <span><%# Eval("BookingDate") %></span></h4>
                                            <div class="booking-details fl-wrap">
                                                <span class="booking-title">Tour Name</span> :
                                                            <span class="booking-text"><a href='TourDetail.aspx?tourid=<%# Eval("TourID") %>'> <%# Eval("TourName") %></a></span>
                                            </div>
                                            <div class="booking-details fl-wrap">
                                                <span class="booking-title">Number of People </span>: 
                                                            <span class="booking-text"><%# Eval("NumberOfPeople") %></span>
                                            </div>
                                            <div class="booking-details fl-wrap">
                                                <span class="booking-title">Booking Date </span>: 
                                                            <span class="booking-text"><%# Eval("BookingDate") %></span>
                                            </div>
                                            <div class="booking-details fl-wrap">
                                                <span class="booking-title">Mail</span> : 
                                                            <span class="booking-text"><a href="#" target="_top"><%# Eval("Email") %></a></span>
                                            </div>
                                           <%-- <div class="booking-details fl-wrap">
                                                <span class="booking-title">Phone</span> : 
                                                            <span class="booking-text"><a href="tel:+496170961709" target="_top">+496170961709</a></span>
                                            </div>--%>
                                            <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc posuere convallis purus non cursus. Cras metus neque, gravida sodales massa ut. </p>--%>
                                            <%--<a href="#" class="btn  circle-btn    color-bg flat-btn">Approve<i class="fa fa-check-square-o"></i></a>--%>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>

                            <!-- pagination-->
<%--                            <div class="pagination">
                                <a href="#" class="prevposts-link"><i class="fa fa-caret-left"></i></a>
                                <a href="#" class="current-page">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#" class="nextposts-link"><i class="fa fa-caret-right"></i></a>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <!--profile-edit-wrap end -->
            </div>
            <!--container end -->
        </section>
        <!-- section end -->
        <div class="limit-box fl-wrap"></div>
        <!--section -->
        <section class="gradient-bg">
            <div class="cirle-bg">
                <div class="bg" data-bg="images/bg/circle.png"></div>
            </div>
            <div class="container">
                <div class="join-wrap fl-wrap">
                    <div class="row">
                        <div class="col-md-8">
                            <h3>Do You Have Questions ?</h3>
                            <p>Lorem ipsum dolor sit amet, harum dolor nec in, usu molestiae at no.</p>
                        </div>
                        <div class="col-md-4"><a href="contacts.html" class="join-wrap-btn">Get In Touch <i class="fa fa-envelope-o"></i></a></div>
                    </div>
                </div>
            </div>
        </section>
        <!-- section end -->
    </div>

</asp:Content>

