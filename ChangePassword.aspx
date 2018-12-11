﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.Master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

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
                                    <h2>Change Password</h2>
                                    <uc1:ToolbarHeader runat="server" ID="ToolbarHeader" />
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="fixed-bar fl-wrap">
                                            <uc1:DashboardLinks runat="server" ID="DashboardLinks" />
                                        </div>
                                    </div>
                                    <div class="col-md-9">
                                        <!-- profile-edit-container--> 
                                        <div class="profile-edit-container">
                                            <div class="profile-edit-header fl-wrap" style="margin-top:30px">
                                                <h4>Change Password</h4>
                                            </div>
                                            <div class="custom-form no-icons">
                                                <div class="pass-input-wrap fl-wrap">
                                                    <label>Current Password</label>
                                                    <input type="password" class="pass-input" placeholder="" value=""/>
                                                    <span class="eye"><i class="fa fa-eye" aria-hidden="true"></i> </span>
                                                </div>
                                                <div class="pass-input-wrap fl-wrap">
                                                    <label>New Password</label>
                                                    <input type="password" class="pass-input" placeholder="" value=""/>
                                                    <span class="eye"><i class="fa fa-eye" aria-hidden="true"></i> </span>
                                                </div>
                                                <div class="pass-input-wrap fl-wrap">
                                                    <label>Confirm New Password</label>
                                                    <input type="password" class="pass-input" placeholder="" value=""/>
                                                    <span class="eye"><i class="fa fa-eye" aria-hidden="true"></i> </span>
                                                </div>
                                                <button class="btn  big-btn  color-bg flat-btn">Save Changes<i class="fa fa-angle-right"></i></button>
                                            </div>
                                        </div>
                                        <!-- profile-edit-container end-->                                        
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

