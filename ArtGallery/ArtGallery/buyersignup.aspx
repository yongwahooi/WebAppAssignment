<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="buyersignup.aspx.cs" Inherits="ArtGallery.buyersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/buyersignup.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="img_scroll">
    	<h1>WELCOME</h1>
    	<p>register an account to buy products.</p>
    </div>
    <div id="content" >
        <h1>New Customer Information</h1>
        <h2>Fill up the sign up form to be a part of us.</h2>
        <table id="form">
            <tr>
                <td>
                   <asp:Label ID="Label1" runat="server" Text="Name <span class='red'>*</span>"></asp:Label>
                </td>
                <td style="margin-left: 50px;">
                    <asp:TextBox ID="TextBoxname" runat="server" CssClass="textbox_style" placeholder="Name as per MyKad"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="ic_num" class="auto-style1">
                    
                    <asp:Label ID="Label11" runat="server" Text="IC No. <span class='red'>*</span>"></asp:Label>
                    
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="6" Width="60px" CssClass="textbox_ic" placeholder="XXXXXX"></asp:TextBox>&nbsp;-
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="2" Width="30px" CssClass="textbox_ic" placeholder="XX"></asp:TextBox>&nbsp;-
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="4" Width="50px" CssClass="textbox_ic" placeholder="XXXX"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Gender <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radioButtonList" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Street Address <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxaddress" runat="server" CssClass="textbox_style" placeholder="Address"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Zip / Postal Code <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxzipcode" runat="server" CssClass="textbox_style" placeholder="Zip / Postal Code"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="State <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox_style">
                        <asp:ListItem>Perlis</asp:ListItem>
                        <asp:ListItem>Kedah</asp:ListItem>
                        <asp:ListItem>Pulau Pinang</asp:ListItem>
                        <asp:ListItem>Kelantan</asp:ListItem>
                        <asp:ListItem>Terengganu</asp:ListItem>
                        <asp:ListItem>Pahang</asp:ListItem>
                        <asp:ListItem>Perak</asp:ListItem>
                        <asp:ListItem>Selangor</asp:ListItem>
                        <asp:ListItem>Wilayah Persekutan Kuala Lumpur</asp:ListItem>
                        <asp:ListItem>Wilayah Persekutan Putrajaya</asp:ListItem>
                        <asp:ListItem>Negeri Sembilan</asp:ListItem>
                        <asp:ListItem>Melaka</asp:ListItem>
                        <asp:ListItem>Johor</asp:ListItem>
                        <asp:ListItem>Wilayah Persekutan Labuan</asp:ListItem>
                        <asp:ListItem>Sabah</asp:ListItem>
                        <asp:ListItem>Sarawak</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Contact No. <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxcontactno" runat="server" CssClass="textbox_style" MaxLength="3" Width="40px" placeHolder="XXX"></asp:TextBox> &nbsp;-
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox_style" MaxLength="8" placeholder="XXXXXXXX" Width="90px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="E-mail Address <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxemail" runat="server" CssClass="textbox_style" placeholder="example123@gmail.com"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Password <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxpw" runat="server" CssClass="textbox_style" TextMode="Password" placeholder="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Confirm Password <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxcpw" runat="server" CssClass="textbox_style" TextMode="Password" placeholder="Confirm password"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 30px">
                <td></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes, I agree to the Terms &amp; Conditons <span class='red'>**</span>" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Buttonsignup" runat="server" Text="SIGN UP" CssClass="Buttonsignup" />
                    <asp:Button ID="Buttoncancel" runat="server" Text="CANCEL" CssClass="ButtonCancel" />
                </td>
            </tr>            
        </table>
    </div>
</asp:Content>
