<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="ArtGallery.forgotpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/forgotpw.js" type="text/javascript"></script>
    <link href="css/forgotpassword.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
    <div id="img_scroll">
    	<h1>Forgot Password?</h1>
    	<p>we will help you to retrieve it back.</p>
    </div>
    <div id="content">
    	<h1>Reset Your Password</h1>
    	<h3>Kindly fill up below required information. A temporary password will be sent to your validated e-mail address.</h3>
    	<div id="email_icon">
            <asp:TextBox ID="Email" placeholder="E-MAIL ADDRESS" CssClass="mail" runat="server"></asp:TextBox>
    	</div>
    	<br/>
            <asp:Button ID="reset_password" runat="server" Text="RESET PASSWORD" CssClass="ResetPassword" />    
	</div>    
	</div>
</asp:Content>
