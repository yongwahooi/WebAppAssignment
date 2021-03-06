﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AccountLogin.aspx.cs" Inherits="ArtGallery.AccountLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/accLogin.js" type="text/javascript"></script>
    <link href="css/accLogin.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
    <div id="img_scroll">
    	<h1>LOGIN</h1>
    	<p>welcome to join our big family.</p>
    </div>
    <div id="login_acc">
    	<h2>ALREADY HAVE AN ACCOUNT?</h2>
    	<div id="email_icon">
            <asp:TextBox ID="email"  placeholder="E-MAIL ADDRESS" CssClass="mail" runat="server"></asp:TextBox>
    	</div>
    	<div id="password_icon">
            <asp:TextBox ID="Password" type="password"  placeholder="PASSWORD" CssClass="pass" runat="server"></asp:TextBox>
    	</div>
    	<br/>
           <asp:HyperLink ID="forget_pw" NavigateUrl="~/forgotpassword.aspx"  runat="server" CssClass="forget_pw" >Forgot password?</asp:HyperLink>
    	<br/>
            <asp:Button ID="Buttonlogin" runat="server" Text="LOGIN" CssClass="ButtonLogin" />    
        </div>
    <div id="signup_acc">
    	<h2>NEW TO la&middot;Galerie?</h2>
    	<h3>Sign up now to avail our services!</h3>
        <asp:Button ID="Buttonsignup" runat="server" Text="SIGN UP HERE" CssClass="Buttonsignup" PostBackUrl="~/signup.aspx" />
    </div>	
    </div>
</asp:Content>
