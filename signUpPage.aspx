<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signUpPage.aspx.cs" Inherits="TravelBook.signUpPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="jumbotron" style="display: flex; flex-direction: column; align-items: center; height: 100%;">
  <asp:Label ID="SignUpLBL" style="font-size: 24px;" runat="server" Text="Sign Up"></asp:Label>
    <asp:Label ID="firstNameLBL" style ="font-size: 15px; margin-top:20px" runat="server" Text="First Name"></asp:Label>
    <asp:TextBox ID="firstNameTxb" runat="server" type="text" style="height: 30px; border-radius: 15px; border: 2px solid powderblue; margin-bottom: 10px;"></asp:TextBox>
    <asp:Label ID="lastNameLBL" style ="font-size: 15px; margin-top:10px" runat="server" Text="Last Name"></asp:Label>
    <asp:TextBox ID="lastNameTxb" runat="server" type="text" style="height: 30px; border-radius: 15px; border: 2px solid powderblue;"></asp:TextBox>
    <asp:Label ID="userNameLBL" style ="font-size: 15px; margin-top:10px" runat="server" Text="Username"></asp:Label>
    <asp:TextBox id="userNameTxb" runat="server" type="text" style="height: 30px; border-radius: 15px; border: 2px solid powderblue;"></asp:TextBox>
    <asp:Label ID="emailLBL" style ="font-size: 15px; margin-top:10px" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="emailTxb" runat="server" type="email" style="height: 30px; border-radius: 15px; border: 2px solid powderblue;"></asp:TextBox>
    <asp:Label ID="passwordLBL" style ="font-size: 15px; margin-top:10px" runat="server" Text="Password"></asp:Label>
    <asp:TextBox id="passwordTxb" runat="server" type="text" style="height: 30px; border-radius: 15px; border: 2px solid powderblue;"></asp:TextBox>
    <asp:Label ID="confirmPasswordLBL" style ="font-size: 15px; margin-top:10px" runat="server" Text="Confirm Password"></asp:Label>
    <asp:TextBox id="confirmPasswordTxb" runat="server" type="text" style="height: 30px; border-radius: 15px; border: 2px solid powderblue; "></asp:TextBox>
    <asp:Button ID="SignUpBtn" runat="server" type="button" Text="Sign Up" style =" height: 40px;width:80px; border-radius: 5px; border: 2px solid powderblue; margin-top: 10px" OnClick="signUp_Click" />
      


</div>
    


</asp:Content>
