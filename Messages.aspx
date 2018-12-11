<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.Master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Messages" %>

<%@ Register Src="~/DashboardLinks.ascx" TagPrefix="uc1" TagName="DashboardLinks" %>
<%@ Register Src="~/ToolbarHeader.ascx" TagPrefix="uc1" TagName="ToolbarHeader" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    
                    <!--content -->  
                <div class="content">
                    <!--section --> 
                    <section id="sec1">
                        <!-- container -->
                        <div class="container">
                            <!-- profile-edit-wrap -->
                            <div class="profile-edit-wrap">
                                <div class="profile-edit-page-header">
                                    <h2>Messages </h2>
                                    <uc1:ToolbarHeader runat="server" ID="ToolbarHeader" />
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="fixed-bar fl-wrap">
                                            <uc1:DashboardLinks runat="server" ID="DashboardLinks" />
                                        </div>
                                    </div>
                                    <div class="col-md-9">
                                        <div class="dashboard-list-box fl-wrap">
                                            <div class="dashboard-header fl-wrap">
                                                <h3>Inbox</h3>
                                            </div>
                                            
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:5050_Viavago %>' SelectCommand="SELECT [MessageID], [SenderID], [ReceiverID], [Message], [Date], [MessageStatus] FROM [Messages] WHERE ([ReceiverID] = @ReceiverID)">
                                                <SelectParameters>
                                                    <asp:SessionParameter SessionField="UserId" Name="ReceiverID" Type="Int32"></asp:SessionParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:ListView ID="ListView1" runat="server">
                                                <LayoutTemplate>
                                                    <!-- dashboard-list end-->    
                                                    <div class="dashboard-list">
                                                        <div class="ItemPlaceHolder"></div>
                                                    </div>
                                                    <!-- dashboard-list end-->    
                                                </LayoutTemplate>
                                                <ItemTemplate>
                                                    <div class="dashboard-message">
                                                        <%--<span class="new-dashboard-item">New</span>--%>
                                                        <div class="dashboard-message-avatar">
                                                            <img src='<%#Eval("ProfileImg","~/ProfileImages/{0}") %>' alt="">
                                                        </div>
                                                        <div class="dashboard-message-text">
                                                            <h4>Andy Smith - <span><%#Eval("Date") %></span></h4>
                                                            <p><%#Eval("Message") %> </p>
                                                            <span class="reply-mail clearfix">Reply : <a  class="dashboard-message-user-mail" href="mailto:yourmail@domain.com" target="_top">yourmail@domain.com</a></span>	
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:ListView>


                                        </div>
                                        <!-- pagination-->
                                        <div class="pagination">
                                            <a href="#" class="prevposts-link"><i class="fa fa-caret-left"></i></a>
                                            <a href="#">1</a>
                                            <a href="#" class="current-page">2</a>
                                            <a href="#">3</a>
                                            <a href="#">4</a>
                                            <a href="#" class="nextposts-link"><i class="fa fa-caret-right"></i></a>
                                        </div>
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

