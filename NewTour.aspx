<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.Master" AutoEventWireup="true" CodeFile="NewTour.aspx.cs" Inherits="NewTour" %>

<%@ Register Src="~/DashboardLinks.ascx" TagPrefix="uc1" TagName="DashboardLinks" %>


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
                        <h2>Add Listing</h2>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="fixed-bar fl-wrap">
                                <uc1:DashboardLinks runat="server" ID="DashboardLinks" />
                            </div>
                        </div>
                        <div class="col-md-9">
                            <!-- profile-edit-container-->
                            <div class="profile-edit-container add-list-container">
                                <div class="profile-edit-header fl-wrap">
                                    <h4>Basic Information</h4>
                                </div>
                                <div class="custom-form">
                                    <label>Tour Name <i class="fa fa-briefcase"></i></label>
                                    <asp:TextBox ID="txtTourName" runat="server" placeholder="Name of your tour"></asp:TextBox>
                                    <%--<div class="col-md-6">
                                                        <label>Keywords <i class="fa fa-key"></i></label>
                                                        <input type="text" placeholder="Maximum 15, should be separated by commas" value=""/>
                                                    </div>--%>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Category</label>
                                            <select runat="server" id="ddlCategory" data-placeholder="All Categories" class="chosen-select">
                                                <option>Outdoor</option>
                                                <option>Food</option>
                                                <option>City</option>
                                                <option>Restaurants</option>
                                                <option>Fitness</option>
                                                <option>Events</option>
                                            </select>
                                        </div>
                                        <%--<i class="fa fa-map-marker"></i>--%>
                                    </div>
                                </div>
                            </div>
                            <!-- profile-edit-container end-->
                            <!-- profile-edit-container-->
                            <div class="profile-edit-container add-list-container">
                                <div class="profile-edit-header fl-wrap">
                                    <h4>Location </h4>
                                </div>
                                <div class="custom-form">
                                    <label>
                                        Street Address<%--<select data-placeholder="Location" class="chosen-select" >
                                                    <option>All Locations</option>
                                                    <option>Bronx</option>
                                                    <option>Brooklyn</option>
                                                    <option>Manhattan</option>
                                                    <option>Queens</option>
                                                    <option>Staten Island</option>
                                                </select>--%></label>
                                    <asp:TextBox ID="txtAddress" runat="server" placeholder="Street address of your tour"></asp:TextBox>
                                    <%--<label>Phone<i class="fa fa-phone"></i></label>
                                                <input type="text" placeholder="Your Phone" value=""/>
                                                <label>Email<i class="fa fa-envelope-o"></i></label>
                                                <input type="text" placeholder="Your Email" value=""/>
                                                <label>Website<i class="fa fa-globe"></i></label>
                                                <input type="text" placeholder="Your Website" value=""/>--%>
                                    <label>City</label>
                                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                    <label>State</label>
                                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                                    <label>Country</label>
                                    <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                                    <label>Price</label>
                                    <asp:TextBox ID="txtPrice" runat="server" Width="120px"></asp:TextBox>

                                    <%--<div class="col-md-4">
                                                        <div class="add-list-media-header">
                                                            <label class="radio inline"> 
                                                            <input type="radio" name="gender">
                                                            <span>Carousel</span> 
                                                            </label>
                                                        </div>
                                                        <div class="add-list-media-wrap">
                                                            <form   class="fuzone">
                                                                <div class="fu-text">
                                                                    <span><i class="fa fa-picture-o"></i> Click here or drop files to upload</span>
                                                                </div>
                                                                <input type="file" class="upload">
                                                            </form>
                                                        </div>
                                                    </div>--%>                                                <%--<div class="col-md-4">
                                                        <div class="add-list-media-header">
                                                            <label class="radio inline"> 
                                                            <input type="radio" name="gender">
                                                            <span>Video</span> 
                                                            </label>
                                                        </div>
                                                        <div class="add-list-media-wrap">
                                                            <label>Youtube  <i class="fa fa-youtube"></i></label>
                                                            <input type="text" placeholder="https://www.youtube.com/" value=""/>   
                                                            <label>Vimeo <i class="fa fa-vimeo"></i></label>
                                                            <input type="text" placeholder="https://vimeo.com/" value=""/> 
                                                            <div class="change-photo-btn">
                                                                <div class="photoUpload">
                                                                    <span><i class="fa fa-upload"></i> Upload Video</span>
                                                                    <input type="file" class="upload">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>--%>
                                </div>
                            </div>
                            <!-- profile-edit-container end-->
                            <!-- profile-edit-container-->
                            <div class="profile-edit-container add-list-container">
                                <div class="profile-edit-header fl-wrap">
                                    <h4>Header Media</h4>
                                </div>
                                <div class="custom-form">
                                    <div class="row">
                                        <!--col -->
                                        <div class="col-md-4">
                                            <div class="add-list-media-header">
                                                <label class="radio inline">
                                                    <input type="radio" name="gender" checked>
                                                    <span>Main Image</span>
                                                </label>
                                            </div>
                                            <div class="add-list-media-wrap">
                                                <div class="fuzone">
                                                    <div class="fu-text">
                                                        <span><i class="fa fa-picture-o"></i>Click here or drop files to upload</span>
                                                    </div>
                                                    <%--<div class=" fl-wrap filter-tags">
                                                   <h4>Amenities </h4>
                                                    <input id="check-a" type="checkbox" name="check">
                                                    <label for="check-a">Elevator in building</label>
                                                    <input id="check-b" type="checkbox" name="check">
                                                    <label for="check-b">Friendly workspace</label>
                                                    <input id="check-c" type="checkbox" name="check">
                                                    <label for="check-c">Instant Book</label>
                                                    <input id="check-d" type="checkbox" name="check">
                                                    <label for="check-d">Wireless Internet</label>
                                                </div>--%>
                                                    <%--<asp:Panel ID="Panel1" runat="server">--%>
                                                        <asp:FileUpload ID="fupTourImage" runat="server" CssClass="upload" />
                                                        <%--<asp:Button ID="Button1" runat="server" Text="Add another image.." OnClick="Button1_OnClick" />--%>
                                                    <%--</asp:Panel>--%>

                                                </div>
                                            </div>
                                        </div>
                                        <!--col end-->
                                        <!--col -->
                                        <%--<div class="profile-edit-container add-list-container">
                                            <div class="profile-edit-header fl-wrap">
                                                <h4>Content Widgets</h4>
                                            </div>
                                            <div class="custom-form">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <!-- act-widget--> 
                                                        <div class="act-widget fl-wrap">
                                                            <div class="act-widget-header">
                                                                <h4>1. Promo video</h4>
                                                                <div class="onoffswitch">
                                                                    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch5" checked>
                                                                    <label class="onoffswitch-label" for="myonoffswitch5">
                                                                    <span class="onoffswitch-inner"></span>
                                                                    <span class="onoffswitch-switch"></span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="add-list-media-wrap">
                                                                <div   class="fuzone">
                                                                    <div class="fu-text">
                                                                        <span><i class="fa fa-picture-o"></i> Click here or drop files to upload</span>
                                                                    </div>
                                                                    <input type="file" class="upload">
                                                                </div>
                                                              <label>Video url :  <i class="fa fa-youtube"></i></label>
                                                                <input type="text" placeholder="https://www.youtube.com/" value=""/>
                                                            </div>
                                                        </div>
                                                        <!-- act-widget end-->
                                                    </div>
                                                    <div class="col-md-4">
                                                        <!-- act-widget--> 
                                                        <div class="act-widget fl-wrap">
                                                            <div class="act-widget-header">
                                                                <h4>2. Gallery Thumbnails</h4>
                                                                <div class="onoffswitch">
                                                                    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch6" checked>
                                                                    <label class="onoffswitch-label" for="myonoffswitch6">
                                                                    <span class="onoffswitch-inner"></span>
                                                                    <span class="onoffswitch-switch"></span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="add-list-media-wrap">
                                                                <div  class="fuzone">
                                                                    <div class="fu-text">
                                                                        <span><i class="fa fa-picture-o"></i> Click here or drop files to upload</span>
                                                                    </div>
                                                                    <input type="file" class="upload">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- act-widget end-->
                                                    </div>
                                                    <div class="col-md-4">
                                                        <!-- act-widget--> 
                                                        <div class="act-widget fl-wrap">
                                                            <div class="act-widget-header">
                                                                <h4>3. Slider</h4>
                                                                <div class="onoffswitch">
                                                                    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch7">
                                                                    <label class="onoffswitch-label" for="myonoffswitch7">
                                                                    <span class="onoffswitch-inner"></span>
                                                                    <span class="onoffswitch-switch"></span>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="add-list-media-wrap">
                                                                <form   class="fuzone">
                                                                    <div class="fu-text">
                                                                        <span><i class="fa fa-picture-o"></i> Click here or drop files to upload</span>
                                                                    </div>
                                                                    <input type="file" class="upload">
                                                                </form>
                                                            </div>
                                                        </div>
                                                        <!-- act-widget end-->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>--%>
                                        <!--col end-->
                                        <!--col -->
                                        <%--<div class="profile-edit-container add-list-container">
                                            <div class="profile-edit-header fl-wrap">
                                                <h4>Sidebar Widgets</h4>
                                            </div>
                                            <div class="custom-form">
                                                <!-- act-widget--> 
                                                <div class="act-widget fl-wrap">
                                                    <div class="act-widget-header">
                                                        <h4>1. Booking Form</h4>
                                                        <div class="onoffswitch">
                                                            <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked>
                                                            <label class="onoffswitch-label" for="myonoffswitch">
                                                            <span class="onoffswitch-inner"></span>
                                                            <span class="onoffswitch-switch"></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- act-widget end--> 
                                                <!-- act-widget--> 
                                                <div class="act-widget fl-wrap">
                                                    <div class="act-widget-header">
                                                        <h4>2. Event Counter</h4>
                                                        <div class="onoffswitch">
                                                            <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch2">
                                                            <label class="onoffswitch-label" for="myonoffswitch2">
                                                            <span class="onoffswitch-inner"></span>
                                                            <span class="onoffswitch-switch"></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <label>Event Date<i class="fa fa-calendar-o"></i></label>
                                                    <input type="text" placeholder="Date Example : 09/12/2019" value=""/>        
                                                </div>
                                                <!-- act-widget end-->                                                    
                                                <!-- act-widget--> 
                                                <div class="act-widget fl-wrap">
                                                    <div class="act-widget-header">
                                                        <h4>3. Working Hours</h4>
                                                        <div class="onoffswitch">
                                                            <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch3" checked>
                                                            <label class="onoffswitch-label" for="myonoffswitch3">
                                                            <span class="onoffswitch-inner"></span>
                                                            <span class="onoffswitch-switch"></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <textarea cols="40" rows="3" placeholder="Details"></textarea>
                                                </div>
                                                <!-- act-widget end--> 
                                            </div>
                                        </div>--%>
                                        <!--col end-->
                                    </div>
                                </div>
                            </div>
                            <!-- profile-edit-container end-->
                            <!-- profile-edit-container-->
                            <div class="profile-edit-container add-list-container">
                                <div class="profile-edit-header fl-wrap">
                                    <h4>Detailed Information</h4>
                                </div>
                                <div class="custom-form">
                                    <label>Description</label>
                                    <textarea runat="server" id="txtDescription" cols="40" rows="3" placeholder=""></textarea>
                                    <!-- Checkboxes -->
                                    <%--                                                <label>Facebook <i class="fa fa-facebook"></i></label>
                                                <input type="text" placeholder="https://www.facebook.com/" value=""/>
                                                <label>Twitter<i class="fa fa-twitter"></i>  </label>
                                                <input type="text" placeholder="https://twitter.com/" value=""/>
                                                <label>Vkontakte<i class="fa fa-vk"></i>  </label>
                                                <input type="text" placeholder="vk.com" value=""/>
                                                <label> Whatsapp <i class="fa fa-whatsapp"></i>  </label>
                                                <input type="text" placeholder="https://www.whatsapp.com" value=""/>--%>
                                </div>
                            </div>
                            <!-- profile-edit-container end-->
                            <!-- profile-edit-container-->
                            <%--<button class="btn  big-btn  color-bg flat-btn">Save Changes<i class="fa fa-angle-right"></i></button>--%>
                            <!-- profile-edit-container end-->
                            <!-- profile-edit-container-->
                            <%--<div class="profile-edit-container add-list-container">
                                            <div class="profile-edit-header fl-wrap">
                                                <h4>Sidebar Widgets</h4>
                                            </div>
                                            <div class="custom-form">
                                                <!-- act-widget--> 
                                                <div class="act-widget fl-wrap">
                                                    <div class="act-widget-header">
                                                        <h4>1. Booking Form</h4>
                                                        <div class="onoffswitch">
                                                            <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked>
                                                            <label class="onoffswitch-label" for="myonoffswitch">
                                                            <span class="onoffswitch-inner"></span>
                                                            <span class="onoffswitch-switch"></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- act-widget end--> 
                                                <!-- act-widget--> 
                                                <div class="act-widget fl-wrap">
                                                    <div class="act-widget-header">
                                                        <h4>2. Event Counter</h4>
                                                        <div class="onoffswitch">
                                                            <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch2">
                                                            <label class="onoffswitch-label" for="myonoffswitch2">
                                                            <span class="onoffswitch-inner"></span>
                                                            <span class="onoffswitch-switch"></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <label>Event Date<i class="fa fa-calendar-o"></i></label>
                                                    <input type="text" placeholder="Date Example : 09/12/2019" value=""/>        
                                                </div>
                                                <!-- act-widget end-->                                                    
                                                <!-- act-widget--> 
                                                <div class="act-widget fl-wrap">
                                                    <div class="act-widget-header">
                                                        <h4>3. Working Hours</h4>
                                                        <div class="onoffswitch">
                                                            <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch3" checked>
                                                            <label class="onoffswitch-label" for="myonoffswitch3">
                                                            <span class="onoffswitch-inner"></span>
                                                            <span class="onoffswitch-switch"></span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <textarea cols="40" rows="3" placeholder="Details"></textarea>
                                                </div>
                                                <!-- act-widget end--> 
                                            </div>
                                        </div>--%>
                            <!-- profile-edit-container end-->
                            <!-- profile-edit-container-->
                            <div class="profile-edit-container">
                                <div class="profile-edit-header fl-wrap">
                                </div>
                                <div class="custom-form">
                                    <%--                                                <label>Facebook <i class="fa fa-facebook"></i></label>
                                                <input type="text" placeholder="https://www.facebook.com/" value=""/>
                                                <label>Twitter<i class="fa fa-twitter"></i>  </label>
                                                <input type="text" placeholder="https://twitter.com/" value=""/>
                                                <label>Vkontakte<i class="fa fa-vk"></i>  </label>
                                                <input type="text" placeholder="vk.com" value=""/>
                                                <label> Whatsapp <i class="fa fa-whatsapp"></i>  </label>
                                                <input type="text" placeholder="https://www.whatsapp.com" value=""/>--%>
                                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn  big-btn  color-bg flat-btn" OnClick="btnSave_Click" />
                                    <%--<button class="btn  big-btn  color-bg flat-btn">Save Changes<i class="fa fa-angle-right"></i></button>--%>
                                </div>
                            </div>
                            <!-- profile-edit-container end-->
                        </div>
                    </div>
                </div>
                <!--profile-edit-wrap end -->
            </div>
            <!--container end -->
            <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
        </section>
        <!-- section end -->
        <div class="limit-box fl-wrap"></div>

    </div>

</asp:Content>

