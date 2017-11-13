<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AccountLogin.aspx.cs" Inherits="ArtGallery.AccountLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .auto-style2 {
            width: 810px;
        }
        .auto-style3 {
            width: 94%;
            height: 282px;
        }
        .auto-style4 {
            width: 792px;
        }
    </style></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="Images/content_2.jpg" width="1349px" height="550px" />

    <div id="content" >
   

                    <table class="auto-style3" style="border:1px; table-layout: auto;" border-color:"black";>
                        <tr>
                            <td colspan="2"> <h2 class="mbm ui-borderBottom pbs mam" style="margin: 10px; 
padding: 0px 0px 5px; font-weight: 700; font-size: 1.8rem; line-height: 2.4rem; 
border-bottom: 1px solid rgb(242, 242, 242) !important; color: rgb(64, 64, 64); 
font-family: Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; 
font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; 
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; 
text-decoration-style: initial; text-decoration-color: initial;">Login or Sign Up an Account</h2></td>
                            
                            </tr>
                            
                            
                        <tr>
                            <td class="auto-style4"><h4 > Already registered?<br />
                                If you have an account with us, please log in.</h4></td>
                            <td class="auto-style2"><h4 > Sign up now.<br />
                                Be a part of us!</h4></td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                    
                    <asp:Label ID="label" runat="server" Text="E-mail"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style2">
                                <asp:Button ID="Buttonsignup" runat="server" Text="Sign up" style="font-size: 1em;  position: relative;    background:black; -moz-border-radius:3px;
	-webkit-border-radius:3px; 	border-radius:3px;	border:1px solid black;	cursor:pointer;	color:#ffffff;	padding:12px 60px;    box-shadow: 2px 2px 10px #6E6E6E;    display: inline-block;" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Password" type="password" /></td>
                            <td class="auto-style2">
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/forgotpassword.aspx"  runat="server">Forgot password?</asp:HyperLink>
                            </td>
                            <td class="auto-style2">
                               
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Button ID="Buttonlogin" runat="server" Text="Login" style="font-size: 1em;  position: relative;    background:black; -moz-border-radius:3px;
	-webkit-border-radius:3px; 	border-radius:3px;	border:1px solid black;	cursor:pointer;	color:#ffffff;	padding:12px 60px;    box-shadow: 2px 2px 10px #6E6E6E;    display: inline-block;" />
                            </td>
                            <td class="auto-style2">&nbsp;</td>
                        </tr>
                    </table>
                    
       
                    
        
    </div> 
</asp:Content>
