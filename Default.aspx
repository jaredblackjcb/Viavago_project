<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Viavago_project.Default" %>
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
                                <div class="bg"  data-bg="images/bg/1.jpg"></div>
                            </div>
                            <!--  slideshow-item end  -->	
                            <!-- slideshow-item -->	
                            <div class="slideshow-item">
                                <div class="bg"  data-bg="images/bg/1.jpg"></div>
                            </div>
                            <!--  slideshow-item end  -->	
                            <!-- slideshow-item -->	
                            <div class="slideshow-item">
                                <div class="bg"  data-bg="images/bg/1.jpg"></div>
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
                                                <option>Shops</option>
                                                <option>Hotels</option>
                                                <option>Restaurants</option>
                                                <option>Fitness</option>
                                                <option>Events</option>
                                            </select>
                                        </div>
                                        <button class="main-search-button" onclick="window.location.href='listings-half-screen-map-list.html'">Search</button>
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
                    <%--<section class="gray-section">
                        <div class="container">
                            <div class="section-title">
                                <h2>Popular listings</h2>
                                <div class="section-subtitle">Best Listings</div>
                                <span class="section-separator"></span>
                                <p>Nulla tristique mi a massa convallis cursus. Nulla eu mi magna.</p>
                            </div>
                        </div>

                        <!-- carousel --> 
                        <div class="list-carousel fl-wrap card-listing ">
                            <!--listing-carousel-->
                            <div class="listing-carousel  fl-wrap ">
                                <!--slick-slide-item-->
                                <div class="slick-slide-item">
                                    <!-- listing-item -->
                                    <div class="listing-item">
                                        <article class="geodir-category-listing fl-wrap">
                                            <div class="geodir-category-img">
                                                <img src="images/all/1.jpg" alt="">
                                                <div class="overlay"></div>
                                                <div class="list-post-counter"><span>4</span><i class="fa fa-heart"></i></div>
                                            </div>
                                            <div class="geodir-category-content fl-wrap">
                                                <a class="listing-geodir-category" href="listing.html">Retail</a>
                                                <div class="listing-avatar"><a href="author-single.html"><img src="images/avatar/1.jpg" alt=""></a>
                                                    <span class="avatar-tooltip">Added By  <strong>Lisa Smith</strong></span>
                                                </div>
                                                <h3><a href="listing-single.html">Event in City Mol</a></h3>
                                                <p>Sed interdum metus at nisi tempor laoreet.  </p>
                                                <div class="geodir-category-options fl-wrap">
                                                    <div class="listing-rating card-popup-rainingvis" data-starrating2="5">
                                                        <span>(7 reviews)</span>
                                                    </div>
                                                    <div class="geodir-category-location"><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> 27th Brooklyn New York, NY 10065</a></div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <!-- listing-item end-->                         
                                </div>
                                <!--slick-slide-item end-->
                          
                            </div>
                            <!--listing-carousel end-->
                            <div class="swiper-button-prev sw-btn"><i class="fa fa-long-arrow-left"></i></div>
                            <div class="swiper-button-next sw-btn"><i class="fa fa-long-arrow-right"></i></div>
                        </div>
                        <!--  carousel end--> 
                    </section>--%>
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
                                            <p>Proin dapibus nisl ornare diam varius tempus. Aenean a quam luctus, finibus tellus ut, convallis eros sollicitudin turpis.</p>
                                        </div>
                                        <span class="pr-dec"></span>
                                    </li>
                                    <li>
                                        <div class="process-item">
                                            <span class="process-count">02 .</span>
                                            <div class="time-line-icon"><i class="fa fa-envelope-open-o"></i></div>
                                            <h4> Contact a Few Owners</h4>
                                            <p>Faucibus ante, in porttitor tellus blandit et. Phasellus tincidunt metus lectus sollicitudin feugiat pharetra consectetur.</p>
                                        </div>
                                        <span class="pr-dec"></span>
                                    </li>
                                    <li>
                                        <div class="process-item">
                                            <span class="process-count">03 .</span>
                                            <div class="time-line-icon"><i class="fa fa-hand-peace-o"></i></div>
                                            <h4> Make a Listing</h4>
                                            <p>Maecenas pulvinar, risus in facilisis dignissim, quam nisi hendrerit nulla, id vestibulum metus nullam viverra porta.</p>
                                        </div>
                                    </li>
                                </ul>
                                <div class="process-end"><i class="fa fa-check"></i></div>
                            </div>
                            <!--process-wrap   end-->
                        </div>
                    </section>
                    <section class="parallax-section" data-scrollax-parent="true">
                        <div class="bg"  data-bg="images/bg/1.jpg" data-scrollax="properties: { translateY: '100px' }"></div>
                        <div class="overlay co lor-overlay"></div>
                        <!--container-->
                        <div class="container">
                            <div class="intro-item fl-wrap">
                                <h2>Visit the Best Places In Your City</h2>
                                <h3>Find great places , hotels , restourants , shops.</h3>
                                <a class="trs-btn" href="#">Add Listing + </a>
                            </div>
                        </div>
                    </section>
                    <!-- section end -->

                </div>
                <!-- Content end -->      

</asp:Content>
