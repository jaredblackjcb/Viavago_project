<%@ Page Title="" Language="C#" MasterPageFile="~/Viavago.Master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Messages" %>

<%@ Register Src="~/DashboardLinks.ascx" TagPrefix="uc1" TagName="DashboardLinks" %>
<%@ Register Src="~/ToolbarHeader.ascx" TagPrefix="uc1" TagName="ToolbarHeader" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    
                    <!--content -->  
                <div class="content">
                    <asp:Label ID="txtStatus" runat="server" Text="Session variables: "></asp:Label>
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
                                                <h3>Inbox</h3>
                                            </div>
                                        <div class="dashboard-list">
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:5050_Viavago %>' SelectCommand="SELECT FirstName + ' ' + LastName AS SenderFullName, ProfileImg, UserID, [MessageID], [SenderID], [ReceiverID], [Message], [Date], [MessageRead] FROM [Messages] m JOIN Users u ON m.SenderID = u.UserID WHERE ([ReceiverID] = @ReceiverID)" InsertCommand="INSERT INTO Messages (SenderID, ReceiverID, Message, Date) VALUES (@SenderID, @ReceiverID, @Message, @Date)">
                                                <InsertParameters>
                                                    <asp:SessionParameter SessionField="UserId" Name="SenderID" Type="Int32"></asp:SessionParameter>
                                                    <asp:Parameter Name="ReceiverID"></asp:Parameter>
                                                    <asp:Parameter Name="Message"></asp:Parameter>
                                                    <asp:Parameter Name="Date" ></asp:Parameter>
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:SessionParameter SessionField="UserId" Name="ReceiverID" Type="Int32"></asp:SessionParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:ListView ID="lvwInbox" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="UserID" OnItemCommand="lvwInbox_ItemCommand">
                                                <LayoutTemplate>
                                                    <!-- dashboard-list end-->    
                                                    <div class="dashboard-message">
                                                        <div runat="server" ID="ItemPlaceholder"></div>
                                                    <!-- dashboard-list end-->   
                                                    </div>
                                                </LayoutTemplate>
                                                <ItemTemplate>
                                                        <%--<span class="new-dashboard-item">New</span>--%>
                                                        <div class="dashboard-message-avatar">
                                                            <img src='<%#Eval("ProfileImg","~/ProfileImages/{0}") %>' alt="">
                                                        </div>
                                                        <div class="dashboard-message-text">
                                                            <h4><%#Eval("SenderFullName") %> - <span><%#Eval("Date") %></span></h4>
                                                            <p><%#Eval("Message") %> </p>
                                                            <asp:Button ID="btnReply" runat="server" Text="Reply" CommandName="Edit" />
                                                            <br/><br/>
                                                        </div>

                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <div class="dashboard-message-avatar">
                                                        <img src='<%#Eval("ProfileImg","~/ProfileImages/{0}") %>' alt="">
                                                    </div>
                                                    <div class="dashboard-message-text">
                                                        <h4><%#Eval("SenderFullName") %> - <span><%#Eval("Date") %></span></h4>
                                                        <p><%#Eval("Message") %> </p>
                                                        <asp:Button ID="btnReply" runat="server" Text="Reply" OnClick="btnReply_OnClick" />
                                                        <br/><br/>
                                                        <asp:TextBox ID="txtReply" runat="server" Columns="20" Rows="5" Visible="True"></asp:TextBox>
                                                        <asp:Button ID="btnSend" runat="server" Text="Send" CommandName="InsertMessage" />
                                                    </div>
                                                </EditItemTemplate>
                                            </asp:ListView>
                                        </div>



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

