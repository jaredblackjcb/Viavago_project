<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.master" AutoEventWireup="true" CodeFile="Reply.aspx.cs" Inherits="Reply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    
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
                                                <h3>Reply</h3>
                                            </div>
                                            <!-- dashboard-list end-->    
                                            <div class="dashboard-list">
                                                <div class="dashboard-message">
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:5050_Viavago %>' SelectCommand="SELECT FirstName + ' ' + LastName AS SenderFullName, [MessageID], [SenderID], [ReceiverID], [Message], [Date], [MessageStatus] FROM [Messages] m JOIN Users u ON m.SenderID = u.UserID WHERE ([ReceiverID] = @ReceiverID)">
                                                        <SelectParameters>
                                                            <asp:SessionParameter SessionField="UserId" Name="ReceiverID" Type="Int32"></asp:SessionParameter>
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    <%--<span class="new-dashboard-item">New</span>--%>
                                                    <div class="dashboard-message-avatar">
                                                        <img src='<%#Eval("ProfileImg","~/ProfileImages/{0}") %>' alt="">
                                                    </div>
                                                    <div class="dashboard-message-text">
                                                        <h4><%#Eval("SenderFullName") %> - <span><%#Eval("Date") %></span></h4>
                                                        <p><%#Eval("Message") %> </p>
                                                        <asp:LinkButton ID="btnReply" runat="server" PostBackUrl="Reply.aspx">LinkButton</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- dashboard-list end-->    
                                            <textarea runat="server" id="txtMessage" cols="20" rows="5"></textarea>
                                            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_OnClick" />


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

                </div>
    
    
    
    
    

</asp:Content>

