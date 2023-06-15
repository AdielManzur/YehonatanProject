    <%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feed.aspx.cs" Inherits="TravelBook._Default" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div class="jumbotron" id ="jumbotronClass" style="display: flex; flex-direction: column; height: auto" runat="server">     
            
<style>
  .menu {
      justify-content: center;
    list-style-type: none;
    display: flex;
    list-style-type: none;
    margin: 0;
    padding: 0;
    color: black;
    font-size: 16px;
    font-family: Arial, sans-serif;

  }

  .menu-item {
    margin-right: 20px;
    margin-bottom: 20px; /* Added spacing between menu items */
    color: black;
    font-size: 16px;
    font-family: Arial, sans-serif;
    display: inline-block;

  }


  .menu-item a {
    text-decoration: none;
    color: black;
    font-family: Arial, sans-serif;
    font-size: 16px;
    transition: color 0.3s ease;
      display: inline-block;
    position: relative;
  }

  .menu-item a:hover {
    display: inline-block;
    background-color: #ccc;
    color: #fff;
    padding: 10px 15px;
    border-radius: 5px;
  }

  
</style>

<asp:Menu ID="menuStrip" runat="server" CssClass="menu" Orientation="Horizontal" OnMenuItemClick="menuStrip_MenuItemClick" >
    <StaticMenuItemStyle CssClass="menu-item" />
    <DynamicMenuItemStyle CssClass="menu-item" />
    <Items>
        <asp:MenuItem Text="Math" Value="MathBtn"></asp:MenuItem>
        <asp:MenuItem Text="Physics" Value="PhysicsBtn"></asp:MenuItem>
        <asp:MenuItem Text="English" Value="EnglishBtn"></asp:MenuItem>
        <asp:MenuItem Text="History" Value="HistoryBtn"></asp:MenuItem>
        <asp:MenuItem Text="Computers" Value="ComputersBtn"></asp:MenuItem>
        <asp:MenuItem Text="Hebrew" Value="HebrewBtn"></asp:MenuItem>
        <asp:MenuItem Text="Science" Value="ScienceBtn"></asp:MenuItem>
        <asp:MenuItem Text="All" Value="AllBtn"></asp:MenuItem>
    </Items>
</asp:Menu>

           
            <h2 style="align-self:center">Feed</h2>
             <div class ="summaries-container" runat="server" style="align-content:flex-start">
                <% foreach (var summary in summariesToShow) { %>  
                    <h3><%= summary.subject +"  -  " +summary.title %> <h5 style="align-self:end">by - <%= summary.author%></h5></h3>                 
                    <h4 class="summary-text"><%= summary.text%></h4>   
                <% } %>
             </div>
            <style>
              .summary-text {
                word-break: break-word;
                display: inline-block;
                max-width: 700px; /* Adjust this value to limit the width */
              }
            </style>
        </div>

    </asp:Content>
