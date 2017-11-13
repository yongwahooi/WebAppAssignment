<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="ArtGallery.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 86%;
            height: 449px;
        }
        .auto-style2 {
            height: 39px;
        }
        .auto-style3 {
            width: 605px;
        }
        .auto-style4 {
            font-weight: normal;
            font-size: 36px;
            color: rgb(251, 0, 32);
        }
        .auto-style5 {
            width: 277px;
            height: 186px;
        }
        .auto-style6 {
            width: 273px;
            height: 187px;
        }
        .auto-style7 {
            width: 506px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="Images/content_2.jpg" width="1349px" height="550px" />
    <div id="content" >

    <table class="auto-style1">


        <tr>
            <td colspan="2">
                <h1 style="box-sizing: inherit; font-size: 36px; margin: 0.67em 0px 0px; font-family: Arial, Roboto, sans-serif;  font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial;">Membership Registration</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <h2 class="clear-top" style="box-sizing: inherit; font-family: Arial, Roboto, sans-serif; margin-top: 0px; margin-bottom: 40px; font-weight: 300; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Welcome to<span>&nbsp;</span>la · Galerie</h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <div class="box-text-header" style="box-sizing: inherit; font-family: Verdana, Arial, &quot;Helvetica Neue&quot;, Helvetica, Roboto, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <h3 class="auto-style4" style="box-sizing: inherit; margin: 0px; color:black;" >Buyer</h3>
                    <h5 class="clear-bottom" style="box-sizing: inherit; margin-bottom: 0px; margin-top: 5px; color: rgb(33, 33, 33); font-family: Verdana, Arial, &quot;Helvetica Neue&quot;, Helvetica, Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Become la · Galerie member today!</h5>
                    <p class="clear-bottom" style="box-sizing: inherit; margin-bottom: 0px; margin-top: 5px; color: rgb(33, 33, 33); font-family: Verdana, Arial, &quot;Helvetica Neue&quot;, Helvetica, Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                        <img alt="buyer" class="auto-style5" src="Images/buyer.jpg" /></p>
                    <p class="clear-bottom" style="box-sizing: inherit; margin-bottom: 0px; margin-top: 5px; color: rgb(33, 33, 33); font-family: Verdana, Arial, &quot;Helvetica Neue&quot;, Helvetica, Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                        <asp:Button ID="Buttonbuyer" runat="server" Text="Sign Up" style="font-size: 1em;  position: relative;    background:black; -moz-border-radius:3px;
	-webkit-border-radius:3px; 	border-radius:3px;	border:1px solid black;	cursor:pointer;	color:#ffffff;	padding:12px 60px;    box-shadow: 2px 2px 10px #6E6E6E;    display: inline-block;" />
                    </p>
                </div>
                </td>

            <td class="auto-style3">
                <div class="box-text-header" style="box-sizing: inherit; font-family: Verdana, Arial, &quot;Helvetica Neue&quot;, Helvetica, Roboto, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <h3 class="auto-style4" style="box-sizing: inherit; margin: 0px; color:black;" >Seller</h3>
                    <h5 class="clear-bottom" style="box-sizing: inherit; margin-bottom: 0px; margin-top: 5px; color: rgb(33, 33, 33); font-family: Verdana, Arial, &quot;Helvetica Neue&quot;, Helvetica, Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Want to sell on la · Galerie?</h5>
                    <p class="clear-bottom" style="box-sizing: inherit; margin-bottom: 0px; margin-top: 5px; color: rgb(33, 33, 33); font-family: Verdana, Arial, &quot;Helvetica Neue&quot;, Helvetica, Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                        <img alt="seller" class="auto-style6" src="Images/seller.jpg" /></p>
                    <p class="clear-bottom" style="box-sizing: inherit; margin-bottom: 0px; margin-top: 5px; color: rgb(33, 33, 33); font-family: Verdana, Arial, &quot;Helvetica Neue&quot;, Helvetica, Roboto, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Buttonseller" runat="server" Text="Sign Up" style="font-size: 1em;  position: relative;    background:black; -moz-border-radius:3px;
	-webkit-border-radius:3px; 	border-radius:3px;	border:1px solid black;	cursor:pointer;	color:#ffffff;	padding:12px 60px;    box-shadow: 2px 2px 10px #6E6E6E;    display: inline-block;"/>
                    </p>
                </div>
                </td>
    </table>
    
 </div> 
</asp:Content>
