<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.Master" AutoEventWireup="true" CodeFile="TourDetail.aspx.cs" Inherits="TourDetail" %>

<%@ Register Src="~/ToolbarHeader.ascx" TagPrefix="uc1" TagName="ToolbarHeader" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    
    <!--  content  -->
    <div class="content">
        <!--  section  -->

        <asp:SqlDataSource ID="SqlTourInformation" runat="server" ConnectionString='<%$ ConnectionStrings:5050_Viavago %>' SelectCommand="SELECT t.[TourID], t.[GuideID], t.[TourName], t.[Category], [Description], [Price], t.[NumberOfReviews], [AverageRating], [NumberOfLikes], [NumberOfViews], [MapiFrame], t.[StreetAddress], t.[City], t.[State], t.[Country], Detail, Review, Rating, TourDate, ReviewID, u.UserID, FirstName, LastName, ProfileImg, AboutMe, GuideRating, AboutGuide
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
                       

            
                    <div class="list-single-header absolute-header fl-wrap">
                        <div class="container">
                            <div runat="server" id="itemPlaceHolder"></div>
                        </div>
                    </div>
               
                    <div class="list-single-header-item">

                        <h2>Alisa Noory</a> </h2>
                        <span class="section-separator"></span>
                        <div class="listing-rating card-popup-rainingvis" data-starrating2="5">
                            <span>(11 reviews)</span>
                        </div>
                        <div class="list-post-counter single-list-post-counter"><span>4</span><i class="fa fa-heart"></i></div>
                        <div class="clearfix"></div>
                                                            <div class="row">
                                        <div class="col-md-6">
                                            <div class="list-single-header-contacts fl-wrap">
                                                <ul>
                                                    <li><i class="fa fa-phone"></i><a  href="#">+7(111)123456789</a></li>
                                                    <li><i class="fa fa-map-marker"></i><a  href="#">USA 27TH Brooklyn NY</a></li>
                                                    <li><i class="fa fa-envelope-o"></i><a  href="#">yourmail@domain.com</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="fl-wrap list-single-header-column">
                                                <div class="share-holder hid-share">
                                                    <div class="showshare"><span>Share </span><i class="fa fa-share"></i></div>
                                                    <div class="share-container  isShare"></div>
                                                </div>
                                                <span class="viewed-counter"><i class="fa fa-eye"></i> Viewed -  156 </span>
                                                <a class="custom-scroll-link" href="#sec5"><i class="fa fa-hand-o-right"></i>Add Review </a>
                                            </div>
                                        </div>
                                    </div>
                    </div>

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
<%--                            <div class="breadcrumbs gradient-bg  fl-wrap"><a href="#">Home</a><a href="#">Listings</a><span>Listing Single</span></div>--%>
                            <uc1:ToolbarHeader runat="server" ID="ToolbarHeader" />
                            
                            
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
                                <%--                                            <span class="fw-separator"></span>
                                            <div class="list-single-main-item-title fl-wrap">
                                                <h3>Tags</h3>
                                            </div>
                                            <div class="list-single-tags tags-stylwrap">
                                                <a href="#">Lunch</a>
                                                <a href="#">Friendly service</a>
                                                <a href="#">Wine</a>
                                                <a href="#">Sandwich</a>
                                                <a href="#">Food</a>
                                                <a href="#">Cocktails</a>                                                                               
                                            </div>--%>
                            </div>
                            <%--                                        <div class="accordion">
                                            <a class="toggle act-accordion" href="#"> Details option   <i class="fa fa-angle-down"></i></a>
                                            <div class="accordion-inner visible">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra.</p>
                                            </div>
                                            <a class="toggle" href="#"> Details option 2  <i class="fa fa-angle-down"></i></a>
                                            <div class="accordion-inner">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra.</p>
                                            </div>
                                            <a class="toggle" href="#"> Details option 3  <i class="fa fa-angle-down"></i></a>
                                            <div class="accordion-inner">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra.</p>
                                            </div>
                                        </div>--%>


                            <div class="list-single-main-item fl-wrap" id="sec3">
                                <div class="list-single-main-item-title fl-wrap">
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
                            </div>
                            <!-- list-single-main-item end -->
                            <!-- list-single-main-item -->
                            
                            <div class="list-single-main-item fl-wrap" id="sec4">
                                <div class="list-single-main-item-title fl-wrap">
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
                                                <input type="text" placeholder="Your Name *" value="" />
                                                <div class="clearfix"></div>
                                                <label><i class="fa fa-envelope-o"></i></label>
                                                <input type="text" placeholder="Email Address*" value="" />
                                                <div class="quantity fl-wrap">
                                                    <span><i class="fa fa-user-plus"></i>Persons : </span>
                                                    <div class="quantity-item">
                                                        <input type="button" value="-" class="minus">
                                                        <input type="text" name="quantity" title="Qty" class="qty" min="1" max="3" step="1" value="1">
                                                        <input type="button" value="+" class="plus">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <label><i class="fa fa-calendar-check-o"></i></label>
                                                        <input type="text" placeholder="Date" class="datepicker" data-large-mode="true" data-large-default="true" value="" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label><i class="fa fa-clock-o"></i></label>
                                                        <input type="text" placeholder="Time" class="timepicker" value="12:00 am" />
                                                    </div>
                                                </div>
                                                <textarea cols="40" rows="3" placeholder="Additional Information:"></textarea>
                                            </fieldset>
                                            <button class="btn  big-btn  color-bg flat-btn">Book Now<i class="fa fa-angle-right"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--box-widget-item end -->
                            <!--box-widget-item -->
                            <div class="box-widget-item fl-wrap">
                                <div class="box-widget-item-header">
                                    <h3>Location / Contacts : </h3>
                                </div>
                                <div class="box-widget">
                                    <div class="map-container">
                                        <div id="singleMap" data-latitude="40.7427837" data-longitude="-73.11445617675781" data-maptitle="Out Location"></div>
                                    </div>
                                    <div class="box-widget-content">
                                        <div class="list-author-widget-contacts list-item-widget-contacts">
                                            <ul>
                                                <li><span><i class="fa fa-map-marker"></i>Adress :</span> <a href="#">USA 27TH Brooklyn NY</a></li>
                                                <li><span><i class="fa fa-phone"></i>Phone :</span> <a href="#">+7(123)987654</a></li>
                                                <li><span><i class="fa fa-envelope-o"></i>Mail :</span> <a href="#">AlisaNoory@domain.com</a></li>
                                                <li><span><i class="fa fa-globe"></i>Website :</span> <a href="#">themeforest.net</a></li>
                                            </ul>
                                        </div>
                                        <div class="list-widget-social">
                                            <ul>
                                                <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#" target="_blank"><i class="fa fa-vk"></i></a></li>
                                                <li><a href="#" target="_blank"><i class="fa fa-whatsapp"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--box-widget-item end -->
                            <!--box-widget-item -->
                            <div class="box-widget-item fl-wrap">
                                <div class="box-widget-item-header">
                                    <h3>Hosted by : </h3>
                                </div>
                                <div class="box-widget list-author-widget">
                                    <div class="list-author-widget-header shapes-bg-small  color-bg fl-wrap">
                                        <span class="list-author-widget-link"><a href="author-single.html">Alisa Noory</a></span>
                                        <img src="images/avatar/1.jpg" alt="">
                                    </div>
                                    <div class="box-widget-content">
                                        <div class="list-author-widget-text">
                                            <div class="list-author-widget-contacts">
                                                <ul>
                                                    <li><span><i class="fa fa-phone"></i>Phone :</span> <a href="#">+7(123)987654</a></li>
                                                    <li><span><i class="fa fa-envelope-o"></i>Mail :</span> <a href="#">AlisaNoory@domain.com</a></li>
                                                    <li><span><i class="fa fa-globe"></i>Website :</span> <a href="#">themeforest.net</a></li>
                                                </ul>
                                            </div>
                                            <a href="author-single.html" class="btn transparent-btn">View Profile <i class="fa fa-eye"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--box-widget-item end -->
                            <!--box-widget-item -->
                            <div class="box-widget-item fl-wrap">
                                <div class="box-widget-item-header">
                                    <h3>More from this employer : </h3>
                                </div>
                                <div class="box-widget widget-posts">
                                    <div class="box-widget-content">
                                        <ul>
                                            <li class="clearfix">
                                                <a href="#" class="widget-posts-img">
                                                    <img src="images/all/1.jpg" alt=""></a>
                                                <div class="widget-posts-descr">
                                                    <a href="#" title="">Cafe "Lollipop"</a>
                                                    <span class="widget-posts-date"><i class="fa fa-calendar-check-o"></i>21 Mar 2017 </span>
                                                </div>
                                            </li>
                                            <li class="clearfix">
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
                                        </ul>
                                        <a class="widget-posts-link" href="#">See All Listing<span><i class="fa fa-angle-right"></i></span></a>
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

