<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="TravelBook.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="display: flex; flex-direction: column; align-items: center;">
    <asp:Label ID="SignInLBL" style="font-size: 30px; margin-top:150px" runat="server" Text="Sign In"></asp:Label>
    <asp:Label ID="username" style ="font-size: 15px; margin-top:20px" runat="server" Text="username"></asp:Label>
    <asp:TextBox ID="usernameTxb" runat="server" type="text" style="height: 30px; border-radius: 15px; border: 2px solid powderblue; margin-bottom: 10px;"></asp:TextBox>
    <asp:Label ID="passwordLBL" style ="font-size: 15px; margin-top:10px" runat="server" Text="Password"></asp:Label>
    <asp:TextBox id="passwordTxb" runat="server" type="text" style="height: 30px; border-radius: 15px; border: 2px solid powderblue;"></asp:TextBox> 
    <asp:Button ID="SignInBtn" runat="server" type="button" Text="Sign In" style =" height: 40px;width:80px; border-radius: 5px; border: 2px solid powderblue; margin-top: 20px" OnClick="signIn_Click" />
    <li style="list-style: none; margin-top:20px">
      <a  runat="server" href="~/signUpPage">Don't have an account? Click here</a>
    </li>
        </div>


</asp:Content>
