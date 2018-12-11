<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ToolbarHeader.ascx.cs" Inherits="ToolbarHeader" %>

<%--Place inside the <div class="profile-edit-page-header">         for every page
                                    <h2>Admin Panel</h2>  --%>
 <div class="breadcrumbs"><a>
     <asp:SiteMapPath ID="SiteMapPath1" runat="server" PathSeparator=" : " Font-Names="Verdana" Font-Size="0.8em">
         <CurrentNodeStyle ForeColor="#333333" />
         <NodeStyle Font-Bold="True" ForeColor="#990000" />
         <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
         <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
     </asp:SiteMapPath></a>
        </div>
