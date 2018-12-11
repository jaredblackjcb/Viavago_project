<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.Master" AutoEventWireup="true" CodeFile="TourDetail.aspx.cs" Inherits="TourDetail" %>

<%@ Register Src="~/ToolbarHeader.ascx" TagPrefix="uc1" TagName="ToolbarHeader" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    
    <!--  content  -->
    <div class="content">
        <!--  section  -->

        <asp:SqlDataSource ID="SqlTourInformation" runat="server" ConnectionString='<%$ ConnectionStrings:5050_Viavago %>' SelectCommand="SELECT t.[TourID], t.[GuideID], t.[TourName], t.[Category], [Description], [Price], t.[NumberOfReviews], [AverageRating], [NumberOfLikes], [NumberOfViews], [MapiFrame], t.[StreetAddress], t.[City], t.[State], t.[Country], Detail, Review, Rating, TourDate, ReviewID, u.UserID, FirstName, LastName, ProfileImg, AboutMe, GuideRating, AboutGuide, ImgUrl
 FROM [Tour_Information] as t JOIN Tour_Details as d 
ON t.TourID = d.TourID
JOIN Bookings as b
ON b.TourID = d.TourID
JOIN Reviews as r 
ON r.BookingID = b.BookingID
JOIN Users as u 
ON u.UserID = b.UserID
JOIN Guides as g
ON g.UserID = g.UserID
JOIN Tour_Images as ti
ON ti.TourID = t.TourID
WHERE t.tourID = @tourID">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="tourId" Type="int64" DefaultValue="" Name="tourID"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>

        <%-------------------------------------Top Picture Area----------------------------%>

        <section class="parallax-section single-par list-single-section" data-scrollax-parent="true" id="sec1">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlTourInformation">
            <ItemTemplate>

                 <div class="bg par-elem " data-bg="<%# Eval("ImgUrl") %>" data-scrollax="properties: { translateY: '30%' }"></div>
                                   <div class="overlay"></div>
                       
                </ItemTemplate>


        </asp:ListView>
        
           
        </section>
        <!-----------------------------------------------  section end ------------------------------------------------->
        <div class="scroll-nav-wrapper fl-wrap">
            <div class="container">
                <nav class="scroll-nav scroll-init">
                    <ul>
                        <li><a class="act-scrlink" href="#sec1">Top</a></li>
                        <li><a href="#sec2">Details</a></li>
                        <li><a href="#sec3">Gallery</a></li>
                        <li><a href="#sec4">Reviews</a></li>
                    </ul>
                </nav>
                
            </div>
        </div>
        <!---------------------------------------  section 1  ---------------------------------->

          
        
        <section class="gray-section no-top-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="list-single-main-wrapper fl-wrap" id="sec2">
                         <div class="breadcrumbs gradient-bg  fl-wrap"><a href="#">Home</a><a href="#">Listings</a><span>Listing Single</span></div>--%>
                            <uc1:ToolbarHeader runat="server" ID="ToolbarHeader" />
                            
                            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlTourInformation">
                                <ItemTemplate>
                                <div class="list-single-main-item fl-wrap">
                                <div class="list-single-main-item-title fl-wrap">
                                    <h3>About <%# Eval("TourName") %>: </h3>
                                </div>
                                <p><%# Eval("Description") %></p>
                                <span class="fw-separator"></span>
                                <div class="list-single-main-item-title fl-wrap">
                                    <h3>Included With Tour: </h3>
                                </div>
                                <div class="listing-features fl-wrap">
                                    <ul>
                                        <li><i class="fa fa-rocket"></i>Happy Faces!</li>
                                    </ul>
                                </div>
                                </ItemTemplate>

                            </asp:ListView>
                             
                            </div>
                           
          <%--------------------------------New box-----------------------------%>

                            <div class="list-single-main-item fl-wrap" id="sec3">
                                <div class="list-single-main-item-title fl-wrap">
                                    
                                    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlTourInformation">
                                        <ItemTemplate>

                                <h3>Gallery - Photos</h3>
                                </div>
                                <!-- gallery-items   -->
                                <div class="gallery-items grid-small-pad  list-single-gallery three-coulms lightgallery">
                                    <!-- 1 -->
                                    <div class="gallery-item">
                                        <div class="grid-item-holder">
                                            <div class="box-item">
                                                <img src='<%# Eval("imgUrl") %>' alt="">
                                                <a href="images/all/single/1.jpg" class="gal-link popup-image"><i class="fa fa-search"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 1 end -->
                                </div>
                                <!-- end gallery items -->

                                        </ItemTemplate>
                                    </asp:ListView>
                                    
                                    
                            </div>
                            <!-- list-single-main-item end -->
                            <!-- list-single-main-item -->
                            
                            <div class="list-single-main-item fl-wrap" id="sec4">
                                <div class="list-single-main-item-title fl-wrap">
                                    
                                    <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlTourInformation">
                                        <ItemTemplate>

                                <h3>Tour Reviews</h3>
                                </div>
                                <div class="reviews-comments-wrap">
                                    <!-- reviews-comments-item -->
                                    <div class="reviews-comments-item">
                                        <div class="reviews-comments-item-text">
                                            <h4><a href="#">Tour Date: <%# Eval("TourDate") %></a></h4>
                                            <div class="listing-rating card-popup-rainingvis" data-starrating2="5"></div>
                                            <div class="clearfix"></div>
                                            <p><%# Eval("Review") %> this is an example of what could be an review</p>
                                            <span class="reviews-comments-item-date"><i class="fa fa-calendar-check-o"></i>Experience Rating: <%# Eval("Rating") %></span>
                                        </div>
                                    </div>
                                    <!--reviews-comments-item end-->
                                </div>

                                        </ItemTemplate>
                                    </asp:ListView>
                            </div>
                            <!-- list-single-main-item end -->
                            <!-- list-single-main-item -->
                            <div class="list-single-main-item fl-wrap" id="sec5">
                                <div class="list-single-main-item-title fl-wrap">
                                    <h3>Write a Review</h3>
                                </div>
                                <!-- Add Review Box -->
                                <div id="add-review" class="add-review-box">
                                    <div class="leave-rating-wrap">
                                        <span class="leave-rating-title">Your rating  for this listing : </span>
                                        <div class="leave-rating">
                                            <input type="radio" name="rating" id="rating-1" value="1" />
                                            <label for="rating-1" class="fa fa-star-o"></label>
                                            <input type="radio" name="rating" id="rating-2" value="2" />
                                            <label for="rating-2" class="fa fa-star-o"></label>
                                            <input type="radio" name="rating" id="rating-3" value="3" />
                                            <label for="rating-3" class="fa fa-star-o"></label>
                                            <input type="radio" name="rating" id="rating-4" value="4" />
                                            <label for="rating-4" class="fa fa-star-o"></label>
                                            <input type="radio" name="rating" id="rating-5" value="5" />
                                            <label for="rating-5" class="fa fa-star-o"></label>
                                        </div>
                                    </div>
                                    <!-- Review Comment -->
                                    <div class="add-comment custom-form">
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label><i class="fa fa-user-o"></i></label>
                                                    <input type="text" placeholder="Your Name *" value="" />
                                                </div>
                                                <div class="col-md-6">
                                                    <label><i class="fa fa-envelope-o"></i></label>
                                                    <input type="text" placeholder="Email Address*" value="" />
                                                </div>
                                            </div>
                                            <textarea cols="40" rows="3" placeholder="Your Review:"></textarea>
                                        </fieldset>
                                        <button class="btn  big-btn  color-bg flat-btn">Submit Review <i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
                                    </div>
                                </div>
                                <!-- Add Review Box / End -->
                            </div>
                            <!-- list-single-main-item end -->
                        </div>
                    </div>


                    <!--box-widget-wrap -->
                    <div class="col-md-4">
                        <div class="box-widget-wrap">

                            <!--box-widget-item -->
                            <%--<div class="box-widget-item fl-wrap">
                                            <div class="box-widget-item-header">
                                                <h3>Working Hours : </h3>
                                            </div>
                                            <div class="box-widget opening-hours">
                                                <div class="box-widget-content">
                                                    <span class="current-status"><i class="fa fa-clock-o"></i> Now Open</span>
                                                    <ul>
                                                        <li><span class="opening-hours-day">Monday </span><span class="opening-hours-time">9 AM - 5 PM</span></li>
                                                        <li><span class="opening-hours-day">Tuesday </span><span class="opening-hours-time">9 AM - 5 PM</span></li>
                                                        <li><span class="opening-hours-day">Wednesday </span><span class="opening-hours-time">9 AM - 5 PM</span></li>
                                                        <li><span class="opening-hours-day">Thursday </span><span class="opening-hours-time">9 AM - 5 PM</span></li>
                                                        <li><span class="opening-hours-day">Friday </span><span class="opening-hours-time">9 AM - 5 PM</span></li>
                                                        <li><span class="opening-hours-day">Saturday </span><span class="opening-hours-time">9 AM - 3 PM</span></li>
                                                        <li><span class="opening-hours-day">Sunday </span><span class="opening-hours-time">Closed</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>--%>
                            <!--box-widget-item end -->
                            <!--box-widget-item -->
                            <div class="box-widget-item fl-wrap">
                                <div class="box-widget-item-header">
                                    <h3>Book a Tour : </h3>
                                </div>
                                <div class="box-widget opening-hours">
                                    <div class="box-widget-content">
                                        <div class="add-comment custom-form">
                                            <fieldset>
                                                <label><i class="fa fa-user-o"></i></label>
                                                <asp:TextBox ID="txtName" runat="server" type="text" placeholder="Your Name *" value=""></asp:TextBox>
                                                <div class="clearfix"></div>
                                                <label><i class="fa fa-envelope-o"></i></label>
                                                <asp:TextBox ID="txtEmailAddress" runat="server" type="text" placeholder="Email Address*" value="" ></asp:TextBox>
                                                <div class="quantity fl-wrap">
                                                    <span><i class="fa fa-user-plus"></i>Persons : </span>
                                                    <div class="quantity-item">
                                                        <input type="button" value="-" class="minus">
                                                        <input runat="server" type="text" name="quantity" title="Qty" class="qty" min="1" max="6" step="1" value="1">
                                                        <input type="button" value="+" class="plus">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label><i class="fa fa-calendar-check-o"></i></label>
                                                        <asp:TextBox ID="txtDate" runat="server"  type="text" placeholder="Date" class="datepicker" data-large-mode="true" data-large-default="true"></asp:TextBox>
                                                        
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label><i class="fa fa-clock-o"></i></label>
                                                        <asp:TextBox ID="txtTime" runat="server" type="text" placeholder="Time" class="timepicker" ></asp:TextBox>
                                                    </div>
                                                </div>
                                                <asp:TextBox ID="txtAdditionInfo" runat="server" Columns="5" placeholder="Additional Information:"></asp:TextBox>
                                            </fieldset>
                                            <asp:button runat="server" ID="btnBookNow" class="btn  big-btn  color-bg flat-btn" Text="Book Now" OnClick="btnBookNow_Click"></asp:button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--box-widget-item end -->
                            
                            <asp:SqlDataSource ID="SQLMoreTours" runat="server" ConnectionString='<%$ ConnectionStrings:5050_Viavago %>' SelectCommand="SELECT [TourID], [GuideID], [TourName], [Description], [Price], [StreetAddress], [City], [State], [Country] FROM [Tour_Information] WHERE ([NumberOfReviews] > @NumberOfReviews)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="3" Name="NumberOfReviews" Type="Int32"></asp:Parameter>
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <!--box-widget-item -->
                            <div class="box-widget-item fl-wrap">
                                <div class="box-widget-item-header">
                                    <h3>More from this employer : </h3>
                                </div>
                                <div class="box-widget widget-posts">
                                   
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SQLMoreTours">
                                        <ItemTemplate>
                                             <div class="box-widget-content">
                                        <ul>
                                            <li class="clearfix">
                                                <a href="#" class="widget-posts-img">
                                                    <img src="images/all/1.jpg" alt=""></a>
                                                <div class="widget-posts-descr">
                                                    <a href="#" title=""><%# Eval("TourName") %></a>
                                                    <span class="widget-posts-date"><i class="fa fa-calendar-check-o"></i>21 Mar 2017 </span>
                                                </div>
                                            </li>
                                            </ul>
                                                 </div>
                                        </ItemTemplate>

                                    </asp:Repeater>

                                   
                                            <%--<li class="clearfix">
                                                <a href="#" class="widget-posts-img">
                                                    <img src="images/all/1.jpg" alt=""></a>
                                                <div class="widget-posts-descr">
                                                    <a href="#" title="">Apartment in the Center</a>
                                                    <span class="widget-posts-date"><i class="fa fa-calendar-check-o"></i>7 Mar 2017 </span>
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <a href="#" class="widget-posts-img">
                                                    <img src="images/all/1.jpg" alt=""></a>
                                                <div class="widget-posts-descr">
                                                    <a href="#" title="">Event in City Mol</a>
                                                    <span class="widget-posts-date"><i class="fa fa-calendar-check-o"></i>7 Mar 2017 </span>
                                                </div>
                                            </li>
                                        </ul>--%>
                                        <a class="widget-posts-link" href="Tours.aspx">See All Listing<span><i class="fa fa-angle-right"></i></span></a>
                                    </div>
                                </div>
                            </div>
                            <!--box-widget-item end -->
                        </div>
                    </div>
                    <!--box-widget-wrap end -->
                </div>
            </div>
        </section>
        <!--  section end -->
        <div class="limit-box fl-wrap"></div>
    </div>
    <!--  content end  -->

</asp:Content>

