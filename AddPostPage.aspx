<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPostPage.aspx.cs" Inherits="TravelBook.AddPostPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="display: flex; flex-direction: column; align-items: center;">
        <h1>Add Post</h1>

      
            <label for="subject">Subject:</label>
            <asp:DropDownList ID="subjectDropdown" runat="server" Required="true">
                <asp:ListItem Text="Select a subject" Value=""></asp:ListItem>
                <asp:ListItem Text="Math" Value="Math"></asp:ListItem>
                <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
                <asp:ListItem Text="History" Value="History"></asp:ListItem>
                <asp:ListItem Text="Physics" Value="Physics"></asp:ListItem>
                <asp:ListItem Text="English" Value="English"></asp:ListItem>
                <asp:ListItem Text="Hebrew" Value="Hebrew"></asp:ListItem>
                <asp:ListItem Text="Computers" Value="Computers"></asp:ListItem>
            </asp:DropDownList><br /><br />

            <label for="title">Title:</label>
            <asp:TextBox ID="title" runat="server" Required="true"></asp:TextBox><br /><br />

            <label for="content">Content:</label><br />
            <asp:TextBox ID="content" runat="server" Rows="5" Columns="50" TextMode="MultiLine" Required="true" Height="337px" Width="829px"></asp:TextBox><br /><br />

            <asp:Button ID="submitButton" runat="server" Text="Add Post" OnClick="OnClick" />
       
    </div>
</asp:Content>
