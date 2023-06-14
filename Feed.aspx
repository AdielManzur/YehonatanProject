    <%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feed.aspx.cs" Inherits="TravelBook._Default" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div class="jumbotron" id ="jumbotronClass" style="display: flex; flex-direction: column; height: auto" runat="server">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick" StaticSubMenuIndent="16px" style="display:flex;" >
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
