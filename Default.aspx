<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
                <!-- Content-->   
                <div class="content">
                    <!--section -->
                    <section class="scroll-con-sec hero-section" data-scrollax-parent="true" id="sec1">
                        <div class="slideshow-container" data-scrollax="properties: { translateY: '200px' }" >
                            <!-- slideshow-item -->	
                            <div class="slideshow-item">
                                <div class="bg"  data-bg="images/exotic-travel-7.jpg"></div>
                            </div>
                            <!--  slideshow-item end  -->	
                            <!-- slideshow-item -->	
                            <div class="slideshow-item">
                                <div class="bg"  data-bg="images/restaurant.jpg"></div>
                            </div>
                            <!--  slideshow-item end  -->	
                            <!-- slideshow-item -->	
                            <div class="slideshow-item">
                                <div class="bg"  data-bg="images/borabora.jpg"></div>
                            </div>
                            <!--  slideshow-item end  -->	                        
                        </div>
                        <div class="overlay"></div>
                        <div class="hero-section-wrap fl-wrap">
                            <div class="container">
                                <div class="intro-item fl-wrap">
                                    <h2>We will help you to find all</h2>
                                    <h3>Find great places , hotels , restourants , shops.</h3>
                                </div>
                                <div class="main-search-input-wrap">
                                    <div class="main-search-input fl-wrap">
                                        <div class="main-search-input-item">
                                            <input type="text" placeholder="What are you looking for?" value=""/>
                                        </div>
                                        <div class="main-search-input-item location" id="autocomplete-container">
                                            <input type="text" placeholder="Location" id="autocomplete-input" value=""/>
                                            <a href="#"><i class="fa fa-dot-circle-o"></i></a>
                                        </div>
                                        <div class="main-search-input-item">
                                            <select data-placeholder="All Categories" class="chosen-select" >
                                                <option>All Categories</option>
                                                <option>Outdoors</option>
                                                <option>Indoors</option>
                                                <option>Guides</option>
                                                <option>Viavago Favorites</option>
                                            </select>
                                        </div>
                                        <asp:Button runat="server" class="main-search-button" PostBackUrl="~/Tours.aspx" Text="Search"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bubble-bg"> </div>
                        <div class="header-sec-link">
                            <div class="container"><a href="#sec2" class="custom-scroll-link">Let's Start</a></div>
                        </div>
                    </section>
                    <!-- section end -->
                   
                   

                    <!--section -->  
                    <section>
                        <div class="container">
                            <div class="section-title">
                                <h2>How it works</h2>
                                <div class="section-subtitle">Discover & Connect </div>
                                <span class="section-separator"></span>
                                <p>Explore some of the best tips from around the world.</p>
                            </div>
                            <!--process-wrap  -->
                            <div class="process-wrap fl-wrap">
                                <ul>
                                    <li>
                                        <div class="process-item">
                                            <span class="process-count">01 . </span>
                                            <div class="time-line-icon"><i class="fa fa-map-o"></i></div>
                                            <h4> Find Interesting Place</h4>
                                            <p>Find thousands of different tours to places you have always wanted to go!</p>
                                        </div>
                                        <span class="pr-dec"></span>
                                    </li>
                                    <li>
                                        <div class="process-item">
                                            <span class="process-count">02 .</span>
                                            <div class="time-line-icon"><i class="fa fa-envelope-open-o"></i></div>
                                            <h4> Contact a Few Owners</h4>
                                            <p>Who better than the locals to help show you were to go so you dont miss out on any aspect of your trip?</p>
                                        </div>
                                        <span class="pr-dec"></span>
                                    </li>
                                    <li>
                                        <div class="process-item">
                                            <span class="process-count">03 .</span>
                                            <div class="time-line-icon"><i class="fa fa-hand-peace-o"></i></div>
                                            <h4> Make a Listing</h4>
                                            <p>Have a place you love to go? Create a tour so other can enjoy it with you!</p>
                                        </div>
                                    </li>
                                </ul>
                                <div class="process-end"><i class="fa fa-check"></i></div>
                            </div>
                            <!--process-wrap   end-->
                        </div>
                    </section>
                    <section class="parallax-section" data-scrollax-parent="true">
                        <div class="bg"  data-bg="images/city.jpg"></div>
                        <div class="overlay co lor-overlay"></div>
                        <!--container-->
                        <div class="container">
                            <div class="intro-item fl-wrap">
                                <h2>Visit the Best Places In Your City</h2>
                                <h3>Find great places , hotels , restourants , shops.</h3>
                                <a class="trs-btn" href="NewTour.aspx">Add Listing + </a>
                            </div>
                        </div>
                    </section>
                    <!-- section end -->

                </div>
                <!-- Content end -->      

</asp:Content>
