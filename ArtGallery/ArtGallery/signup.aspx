<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="ArtGallery.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/signup.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
    <div id="img_scroll">
    	<h1>SIGN UP</h1>
    	<p>be a part of us to get more details.</p>
    </div>
    <div id="content">
    	<h1>Membership Registration</h1>
    	<h2>Which categories are you belongs to?</h2>
	<a style="display:block" href="#">    
	<div id="left_buyer">
	<div id="img_desc">
		<h2>BUYER</h2>
		<h3>who wish to buy any art works</h3>
		<h1>SIGN UP NOW!</h1>
	</div>    	
		<img class="image" src="Images/cart_buyer.jpg" width="350px" height="400px"  />
    </div>
    </a>
	<a style="display:block" href="#">    <div id="right_seller">
	<div id="img_desc1">
		<h2>SELLER</h2>
		<h3>who wish to sell their art works</h3>
		<h1>SIGN UP NOW!</h1>
	</div>	
    	<img class="image" src="Images/cart_seller.jpg" width="350px" height="400px" />
    </div>
    </a>
	</div>    
	</div>
</asp:Content>
