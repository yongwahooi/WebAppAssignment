<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="ArtGallery.forgotpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
         .auto-style6 {
             width: 1304px;
             height: 3px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="Images/content_2.jpg" width="1349px" height="550px" />

    <div id="content">
        
        <br />

        <table class="auto-style6">
            <tr>
                <td>
                     <h2 class="mbm ui-borderBottom pbs mam" style="margin: 10px; 
padding: 0px 0px 5px; font-weight: 700; font-size: 1.8rem; line-height: 2.4rem; 
border-bottom: 1px solid rgb(242, 242, 242) !important; color: rgb(64, 64, 64); 
font-family: Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; 
font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; 
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; 
text-decoration-style: initial; text-decoration-color: initial;">Reset Your Password</h2>
                    
                </td>
            </tr>
            <tr>
                <td> <h4>Kindly fill up below required information. A temporary password will be sent to your validated e-mail address.</h4>
</td>
            </tr>
            <tr>
                <td>

        <asp:Label ID="Label1" runat="server" Text="E-mail"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="Button1" runat="server" Text="Reset Password" style="font-size: 1em;  position: relative;    background:black; -moz-border-radius:3px;
	-webkit-border-radius:3px; 	border-radius:3px;	border:1px solid black;	cursor:pointer;	color:#ffffff;	padding:12px 60px;    box-shadow: 2px 2px 10px #6E6E6E;    display: inline-block;"/>

                </td>
            </tr>
            <br />
            <br />
        </table>

        <br />

        <br />
        <br/>
        </div>
</asp:Content>
