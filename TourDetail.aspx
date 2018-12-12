<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.master" AutoEventWireup="true" CodeFile="TourDetail.aspx.cs" Inherits="TourDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <style>
        .blacktext {
            text-decoration-color: black;
            font-size: xx-large;
            font-weight: bolder
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <!--  content  -->
    <div class="content">
        <!--  section  -->
        <%--                <section class="parallax-section single-par list-single-section" data-scrollax-parent="true" id="sec1">
                <%--<div class="bg par-elem "  data-bg='<%# Eval("TourImg","~/TourImages/{0}") %>' data-scrollax="properties: { translateY: '30%' }"></div>--%>
        <%--<div class="list-single-header absolute-header fl-wrap">--%>
        <div class="container">
            <asp:Label ID="lblStatus" runat="server" ></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:5050_Viavago %>' SelectCommand="SELECT [TourID], [GuideID], [TourName], [Category], Description, [Price], [NumberOfReviews], [AverageRating], [NumberOfLikes], [NumberOfViews], [StreetAddress] + ' ' + ti.[City] + ', ' + ti.[State] + ', ' + ti.[Country] AS Address, [TourImg], u.FirstName + ' ' + u.LastName AS FullName, u.UserName FROM [Tour_Information] ti JOIN Users u ON ti.GuideID = u.UserID WHERE ([TourID] = @TourID)">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="tourid" Name="TourID" Type="Int32"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>

                    <div class="list-single-header-item">
                        <div class="list-single-header-item-opt fl-wrap">
                            <div class="list-single-header-cat fl-wrap">
                            </div>
                        </div>
                        <span class="blacktext"><%#Eval("TourName") %> </span>- Hosted By <%# Eval("FullName") %></a> 
                                    <span class="section-separator"></span>
                        <%--                                    <div class="listing-rating card-popup-rainingvis" data-starrating2="5">
                                        <span>(<%# Eval("") %> reviews)</span>
                                    </div>--%>
                        <%--<div class="list-post-counter single-list-post-counter"><span>4</span><i class="fa fa-heart"></i></div>--%>
                        <div class="clearfix"></div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="list-single-header-contacts fl-wrap">
                                    <ul>
                                        <%--<li><i class="fa fa-phone"></i><a  href="#">+7(111)123456789</a></li>--%>
                                        <li><i class="fa fa-map-marker"></i><%# Eval("Address") %></li>
                                        <li><i class="fa fa-envelope-o"></i><%# Eval("UserName") %></li>
                                    </ul>
                                </div>
                            </div>
                            <%--<div class="col-md-6">
                                            <div class="fl-wrap list-single-header-column">
                                                <div class="share-holder hid-share">
                                                    <div class="showshare"><span>Share </span><i class="fa fa-share"></i></div>
                                                    <div class="share-container  isShare"></div>
                                                </div>
                                                <span class="viewed-counter"><i class="fa fa-eye"></i> Viewed -  156 </span>
                                                <a class="custom-scroll-link" href="#sec5"><i class="fa fa-hand-o-right"></i>Add Review </a>
                                            </div>
                                        </div>--%>
                        </div>
                    </div>


                </ItemTemplate>
            </asp:FormView>
            <%--                        </div>
                    </div>
                </section>--%>
            <!--  section end -->
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
                    <%--<a href="#" class="save-btn"> <i class="fa fa-heart"></i> Save </a>--%>
                </div>
            </div>
            <!--  section  -->
            <section class="gray-section no-top-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="list-single-main-wrapper fl-wrap" id="sec2">
                                <div class="breadcrumbs gradient-bg  fl-wrap"><a href="Default.aspx">Home</a><a href="Tours.aspx">Browse Tours</a><span>Listing Single</span></div>


                                <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        <div class="list-single-main-media fl-wrap">
                                            <img runat="server" src='<%# Eval("TourImg","~/TourImages/{0}") %>' class="respimg" alt="">
                                        </div>
                                        <div class="list-single-main-item fl-wrap">
                                            <div class="list-single-main-item-title fl-wrap">
                                                <h3>About Tour </h3>
                                            </div>
                                            <p><%# Eval("Description") %></p>
                                            <span class="fw-separator"></span>
<%--                                            <div class="list-single-main-item-title fl-wrap">
                                                <h3>Amenities</h3>
                                            </div>
                                            <div class="listing-features fl-wrap">
                                                <ul>
                                                    <li><i class="fa fa-rocket"></i><%# Eval("") %></li>

                                                </ul>
                                            </div>
                                            <span class="fw-separator"></span>
                                            <div class="list-single-main-item-title fl-wrap">
                                                <h3>Tags</h3>
                                            </div>
                                            <div class="list-single-tags tags-stylwrap">
                                                <a href="#">Lunch</a>
                                            </div>--%>
                                        </div>
                                    </ItemTemplate>

                                </asp:FormView>



                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:5050_Viavago %>' SelectCommand="SELECT [ReviewID], [Rating], [TourDate], [Review], [BookingID] FROM [Reviews]"></asp:SqlDataSource>
                                <%--<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2"></asp:ListView>--%>
                                <!-- list-single-main-item -->
                                <div class="list-single-main-item fl-wrap" id="sec4">
                                    <div class="list-single-main-item-title fl-wrap">
                                        <h3>Item Revies -  <span>3 </span></h3>
                                    </div>
                                    <div class="reviews-comments-wrap">
                                        <!-- reviews-comments-item -->
                                        <div class="reviews-comments-item">
                                            <div class="review-comments-avatar">
                                                <img src="images/avatar/1.jpg" alt="">
                                            </div>
                                            <div class="reviews-comments-item-text">
                                                <h4><a href="#">Jessie Manrty</a></h4>
                                                <div class="listing-rating card-popup-rainingvis" data-starrating2="5"></div>
                                                <div class="clearfix"></div>
                                                <p>" Commodo est luctus eget. Proin in nunc laoreet justo volutpat blandit enim. Sem felis, ullamcorper vel aliquam non, varius eget justo. Duis quis nunc tellus sollicitudin mauris. "</p>
                                                <span class="reviews-comments-item-date"><i class="fa fa-calendar-check-o"></i>27 May 2018</span>
                                            </div>
                                        </div>
                                        <!--reviews-comments-item end-->

                                    </div>
                                </div>
                                <!-- list-single-main-item end -->




                                <!-- list-single-main-item -->
                                <div class="list-single-main-item fl-wrap" id="sec5">
                                    <div class="list-single-main-item-title fl-wrap">
                                        <h3>Add Review</h3>
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
                              <%--  <asp:SqlDataSource ID="sqlBookings" runat="server"></asp:SqlDataSource>--%>
<%--                                <asp:FormView ID="fvwBookTour" runat="server"  DataKeyNames="UserId" DataSourceID="sqlBookings" OnItemCommand="fvwBookTour_ItemCommand" >
                                    <ItemTemplate>
                                        <div class="box-widget-item fl-wrap">
                                        <div class="box-widget-item-header">
                                            <h3>Book Tour : </h3>
                                        </div>
                                                <asp:Button ID="btnBook" runat="server" Text="Book Now" CssClass="fa fa-angle-right" CommandName="Edit" />
                                            </div>
                                <!--box-widget-item end -->
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                                                                                                <!--box-widget-item -->
                                <div class="box-widget-item fl-wrap">
                                    <div class="box-widget-item-header">
                                        <h3>Book Tour : </h3>
                                    </div>
                                    <div class="box-widget opening-hours">
                                        <div class="box-widget-content">
                                            <div class="add-comment custom-form">
                                                <fieldset>
                                                    <label><i class="fa fa-user-o"></i></label>
                                                    <input runat="server" ID="txtName" type="text" placeholder="Your Name *" value="" />
                                                    <div class="clearfix"></div>
                                                    <label><i class="fa fa-envelope-o"></i></label>
                                                    <input runat="server" ID="txtEmail" type="text" placeholder="Email Address*" value="" />
                                                    <div class="quantity fl-wrap">
                                                        <span><i class="fa fa-user-plus"></i>Persons : </span>
                                                        <div class="quantity-item">
                                                            <input type="button" value="-" class="minus">
                                                            <input runat="server" ID="txtNumberOfPeople" type="text" name="quantity" title="Qty" class="qty" min="1" max="8" step="1" value="1">
                                                            <input type="button" value="+" class="plus">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label><i class="fa fa-calendar-check-o"></i></label>
                                                            <asp:Calendar ID="clrBookingDate" runat="server"></asp:Calendar>
                                                        </div>
                                                       <%-- <div class="col-md-6">
                                                            <label><i class="fa fa-clock-o"></i></label>
                                                            <input type="text" placeholder="Time" class="timepicker" value="12:00 am" />
                                                        </div>--%>
<%--                                             </div>
                                                    <textarea cols="40" rows="3" placeholder="Additional Information:"></textarea>
                                           </fieldset>
                                                <asp:Button ID="btnBook" runat="server" Text="Book Now" CssClass="fa fa-angle-right" CommandName="InsertBooking" />
                                                <button class="btn  big-btn  color-bg flat-btn">Book Now<i class="fa fa-angle-right" ></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--box-widget-item end -->
                                    </EditItemTemplate>
                                </asp:FormView>--%>
                                              
    
    
    <div class="box-widget-item fl-wrap">
                                    <div class="box-widget-item-header">
                                        <h3>Book Tour : </h3>
                                    </div>
                                    <div class="box-widget opening-hours">
                                        <div class="box-widget-content">
                                            <div class="add-comment custom-form">
                                                <fieldset>
                                                    <label><i class="fa fa-user-o"></i></label>
                                                    <input runat="server" ID="txtName" type="text" placeholder="Your Name *" value="" />
                                                    <div class="clearfix"></div>
                                                    <label><i class="fa fa-envelope-o"></i></label>
                                                    <input runat="server" ID="txtEmail" type="text" placeholder="Email Address*" value="" />
                                                    <div class="quantity fl-wrap">
                                                        <span><i class="fa fa-user-plus"></i>Persons : </span>
                                                        <div class="quantity-item">
                                                            <input type="button" value="-" class="minus">
                                                            <input runat="server" ID="txtNumberOfPeople" type="text" name="quantity" title="Qty" class="qty" min="1" max="8" step="1" value="1">
                                                            <input type="button" value="+" class="plus">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label><i class="fa fa-calendar-check-o"></i></label>
                                                            <br/><br/>
                                                            <asp:Calendar ID="clrBookingDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                                                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt"></DayHeaderStyle>

                                                                <DayStyle BackColor="#CCCCCC"></DayStyle>

                                                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White"></NextPrevStyle>

                                                                <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>

                                                                <SelectedDayStyle BackColor="#333399" ForeColor="White"></SelectedDayStyle>

                                                                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt"></TitleStyle>

                                                                <TodayDayStyle BackColor="#999999" ForeColor="White"></TodayDayStyle>
                                                            </asp:Calendar>
                                                        </div>
                                                       <%-- <div class="col-md-6">
                                                            <label><i class="fa fa-clock-o"></i></label>
                                                            <input type="text" placeholder="Time" class="timepicker" value="12:00 am" />
                                                        </div>--%>
                                                    </div>
                                                    <%--<textarea cols="40" rows="3" placeholder="Additional Information:"></textarea>--%>
                                                </fieldset>
                                                <asp:Button ID="btnBook" runat="server" Text="Book Now" CssClass="btn  big-btn  color-bg flat-btn" OnClick="btnBook_OnClick" />
                                                <%--<button class="btn  big-btn  color-bg flat-btn">Book Now<i class="fa fa-angle-right" ></i></button>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                

                                <!--box-widget-item -->
                                <%--<div class="box-widget-item fl-wrap">
                                            <div class="box-widget-item-header">
                                                <h3>Location / Contacts : </h3>
                                            </div>
                                            <div class="box-widget">
                                                <div class="map-container">
                                                    <div id="singleMap" data-latitude="40.7427837" data-longitude="-73.11445617675781" data-mapTitle="Out Location"></div>
                                                </div>
                                                <div class="box-widget-content">
                                                    <div class="list-author-widget-contacts list-item-widget-contacts">
                                                        <ul>
                                                            <li><span><i class="fa fa-map-marker"></i> Adress :</span> <a href="#">USA 27TH Brooklyn NY</a></li>
                                                            <li><span><i class="fa fa-phone"></i> Phone :</span> <a href="#">+7(123)987654</a></li>
                                                            <li><span><i class="fa fa-envelope-o"></i> Mail :</span> <a href="#">AlisaNoory@domain.com</a></li>
                                                            <li><span><i class="fa fa-globe"></i> Website :</span> <a href="#">themeforest.net</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="list-widget-social">
                                                        <ul>
                                                            <li><a href="#" target="_blank" ><i class="fa fa-facebook"></i></a></li>
                                                            <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                                            <li><a href="#" target="_blank" ><i class="fa fa-vk"></i></a></li>
                                                            <li><a href="#" target="_blank" ><i class="fa fa-whatsapp"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>--%>
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
                                <%--                                        <div class="box-widget-item fl-wrap">
                                            <div class="box-widget-item-header">
                                                <h3>More from this employer : </h3>
                                            </div>
                                            <div class="box-widget widget-posts">
                                                <div class="box-widget-content">
                                                    <ul>
                                                        <li class="clearfix">
                                                            <a href="#"  class="widget-posts-img"><img src="images/all/1.jpg"  alt=""></a>
                                                            <div class="widget-posts-descr">
                                                                <a href="#" title="">Cafe "Lollipop"</a>
                                                                <span class="widget-posts-date"><i class="fa fa-calendar-check-o"></i> 21 Mar 2017 </span> 
                                                            </div>
                                                        </li>
                                                        <li class="clearfix">
                                                            <a href="#"  class="widget-posts-img"><img src="images/all/1.jpg"  alt=""></a>
                                                            <div class="widget-posts-descr">
                                                                <a href="#" title=""> Apartment in the Center</a>
                                                                <span class="widget-posts-date"><i class="fa fa-calendar-check-o"></i> 7 Mar 2017 </span> 
                                                            </div>
                                                        </li>
                                                        <li class="clearfix">
                                                            <a href="#"  class="widget-posts-img"><img src="images/all/1.jpg"  alt=""></a>
                                                            <div class="widget-posts-descr">
                                                                <a href="#" title="">Event in City Mol</a>
                                                                <span class="widget-posts-date"><i class="fa fa-calendar-check-o"></i> 7 Mar 2017 </span>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                    <a class="widget-posts-link" href="#">See All Listing<span><i class="fa fa-angle-right"></i></span></a>   
                                                </div>
                                            </div>
                                        </div>--%>
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

