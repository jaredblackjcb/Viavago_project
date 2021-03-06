﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.Master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<%@ Register Src="~/DashboardLinks.ascx" TagPrefix="uc1" TagName="DashboardLinks" %>
<%@ Register Src="~/ToolbarHeader.ascx" TagPrefix="uc1" TagName="ToolbarHeader" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">

    <!--content -->
    <div class="content">
        <!--section -->
        <section>
            <!-- container -->
            <div class="container">
                <!-- profile-edit-wrap -->
                <div class="profile-edit-wrap">
                    <div class="profile-edit-page-header">
                        <h2>Edit profile</h2>
                        <uc1:ToolbarHeader runat="server" ID="ToolbarHeader" />
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="fixed-bar fl-wrap">
                                <uc1:DashboardLinks runat="server" ID="DashboardLinks" />
                            </div>
                        </div>
                        <div class="col-md-7">
                            <!-- profile-edit-container-->
                            <div class="profile-edit-container">
                                <div class="profile-edit-header fl-wrap">
                                    <h4>My Account</h4>
                                </div>
                                

                                <!--Database Table Users --> 
                                <div class="custom-form">
                                    <label>First Name <i class="fa fa-user-o"></i></label>
                                    <input id="txtFirstName" runat="server" type="text"  />
                                    <label>Last Name <i class="fa fa-user-o"></i></label>
                                    <input id="txtLastName" runat="server" type="text" />
                                    <label>Email Address<i class="fa fa-envelope-o"></i>  </label>
                                    <input id="txtEmail" runat="server" type="text"   />
<%--                                    <label>Phone<i class="fa fa-phone"></i>  </label>
                                    <input id="txtPhone" runat="server" type="text" />--%>
                                    <label>City<i class="fa fa-phone"></i>  </label>
                                    <input id="txtCity" runat="server" type="text"  />
                                    <label>State<i class="fa fa-phone"></i>  </label>
                                    <input id="txtState" runat="server" type="text"   />
                                    <label>Country<i class="fa fa-phone"></i>  </label>
                                    <input id="txtCountry" runat="server" type="text"   />
                                    <label>About Me</label>
                                    <asp:TextBox ID="txtAboutMe" runat="server" cols="40" Rows="3" ></asp:TextBox>
              <!-- How to connect this to be for only guides-->
                                </div>

                                

                            </div>
                            <!-- profile-edit-container end-->
                            
                            <!-- profile-edit-container-->
                            <div class="profile-edit-container">
                                <div class="profile-edit-header fl-wrap" style="margin-top: 30px">
                                    
                                </div>
                                <div class="custom-form">
                                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                    <button runat="server" id="btnSaveChanges" class="btn  big-btn  color-bg flat-btn" OnServerClick="btnSaveChanges_OnServerClick">Save Changes<i class="fa fa-angle-right"></i></button>
                                </div>
                            </div>
                            <!-- profile-edit-container end-->
                        </div>
                        <div class="col-md-2">
                            <div class="edit-profile-photo fl-wrap">
                                <%--<img runat="server" ID ="imgProfile" src="~/ProfileImages/" class="respimg" alt="">--%>
                                <asp:Image ID="imgProfile" runat="server" />
                                <br/>
                                <asp:FileUpload ID="fupProfileImage" runat="server" />

                                <%--<div class="change-photo-btn">
                                    <div class="photoUpload">
                                        <span><i class="fa fa-upload"></i>Upload Photo</span>
                                        <input type="file" class="upload">
                                    </div>
                                </div>--%>
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
       
    </div>

</asp:Content>

