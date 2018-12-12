<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.Master" AutoEventWireup="true" CodeFile="MyTours.aspx.cs" Inherits="MyTours" %>

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
                        <h2>My Tours </h2>
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

                                <!-- dashboard-list end-->
                                <!-------------  listview of current tours attending--------------->
                                <asp:SqlDataSource ID="sqlMyTours" runat="server" ConnectionString='<%$ ConnectionStrings:5050_Viavago %>' SelectCommand="SELECT [GuideID], [TourName], [TourID], [Category], [Description], [Price], [NumberOfReviews], [AverageRating], [NumberOfLikes], [NumberOfViews], [StreetAddress] + ' ' + [City] + ', ' + [State] + ', ' + [Country] AS Address, [TourImg] FROM [Tour_Information] WHERE ([GuideID] = @GuideID)" DeleteCommand="DELETE FROM Tour_Information WHERE TourID = @TourID;">
                                    <DeleteParameters>
                                        <asp:Parameter Name="TourID" ></asp:Parameter>
                                    </DeleteParameters>
                                    <SelectParameters>
                                        <asp:SessionParameter SessionField="UserId" Name="GuideID" Type="Int32"></asp:SessionParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                    <asp:ListView ID="lvwMyTours" runat="server" DataSourceID="sqlMyTours" DataKeyNames="TourID" OnItemDeleting="lvwMyTours_OnItemDeleting" >
                                        <LayoutTemplate>
                                            <div class="dashboard-header fl-wrap">
                                                <h3>Tours</h3>
                                            </div>
                                                <div runat="server" ID="ItemPlaceHolder"></div>
                                        </LayoutTemplate>
                                        <ItemTemplate>
                                            <div class="dashboard-list">
                                            <div class="dashboard-message">
                                                <div class="dashboard-listing-table-image">
                                                    <a href='TourDetail.aspx?tourid=<%# Eval("TourID") %>'>
                                                        <img runat="server" src='<%# Eval("TourImg", "~/TourImages/{0}") %>' alt=""></a>
                                                </div>
                                                <div class="dashboard-listing-table-text">
                                                    <h4><a href='TourDetail.aspx?tourid=<%# Eval("TourID") %>'>  <%# Eval("TourName") %></a></h4>
                                                    <span class="dashboard-listing-table-address"><i class="fa fa-map-marker"></i><a href="#"><%# Eval("Address") %></a></span>
                                                    <div class="listing-rating card-popup-rainingvis fl-wrap" data-starrating2='<%# Eval("AverageRating") %>'>
                                                        <span>(<%# Eval("NumberOfReviews") %>reviews)</span>
                                                    </div>
                                                    <ul class="dashboard-listing-table-opt  fl-wrap">
                                                        <li><a href='EditTour.aspx?tourid=<%# Eval("TourID") %>'>Edit <i class="fa fa-pencil-square-o"></i></a></li>
                                                        <%--<li><button runat="server" ID="btnDelete" class="del-btn" OnServerClick="" > Delete <i class="fa fa-trash-o"></i></button></li>--%>
                                                        <%--<li><asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn-primary" PostBackUrl='TourDetail.aspx?tourid=<%# Eval("TourID") %>' /></li>--%>
                                                        <li><asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" CssClass="btn-danger" /></li>
                                                        <br/><br/>
                                                    </ul>
                                                </div>
                                            </div>
                                            </div>

                                            <br/><br/>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                            <!-- pagination-->
<%--                            <div class="pagination">
                                <a href="#" class="prevposts-link"><i class="fa fa-caret-left"></i></a>
                                <a href="#">1</a>
                                <a href="#" class="current-page">2</a>
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

    </div>

</asp:Content>

