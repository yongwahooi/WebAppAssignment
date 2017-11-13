<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="sellersignup.aspx.cs" Inherits="ArtGallery.sellersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 39px;
        }
        .auto-style2 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="Images/content_2.jpg" width="1349px" height="550px" />
    <div id="content" >

        <br />
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                     <h2 class="mbm ui-borderBottom pbs mam" style="margin: 10px; padding: 0px 0px 5px; font-weight: 700; font-size: 1.8rem; line-height: 2.4rem; border-bottom: 1px solid rgb(242, 242, 242) !important; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Sign Up Now!</h2>
               
                    </td>
            </tr>
            <tr>
                <td>
                     <h2 class="mbm ui-borderBottom pbs mam" style="margin: 10px; padding: 0px 0px 5px; font-weight: 700; font-size: 1.8rem; line-height: 2.4rem; border-bottom: 1px solid rgb(242, 242, 242) !important; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Create new seller account</h2>
                </td>
            </tr>
            <tr>
                <td>
                     <h3 class="mbm ui-borderBottom pbs mam" style="margin: 10px; padding: 0px 0px 5px; font-weight: 700; font-size: 1.8rem; line-height: 2.4rem; border-bottom: 1px solid rgb(242, 242, 242) !important; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Seller Information</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBoxname" runat="server">Name as per MyKad</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style2" Height="55px" Width="221px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Artist Name *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBoxaname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Contact No. *"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBoxcontactno" runat="server" Width="177px"></asp:TextBox>
               <script>
                   $(function () {
                       $("#TextBoxcontactno").blur(function () {
                           debugger;
                           var inputtxt = $("#TextBoxcontactno").val();
                           phonenumber(inputtxt);
                       })
                       $('form input[name="email"]').blur(function () {
                           var email = $(this).val();
                           var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/igm;
                           if (re.test(email)) {
                               $('.msg').hide();
                               $('.success').show();
                           } else {
                               $('.msg').hide();
                               $('.error').show();
                           }
                       })
                   });
                   function phonenumber(inputtxt) {
                       var phoneno = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
                       if (inputtxt.match(phoneno)) {
                           $("#TextBoxemail").text("Valid Phone Number");
                           return true;
                       }
                       else {
                           $("#TextBoxemail").text("Invalid Phone Number");
                           return false;
                       }
                   }
    </script>
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="E-mail Address *"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBoxemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Password *"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBoxpw" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Confirm Password *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:TextBox ID="TextBoxpw0" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                     <h3 class="mbm ui-borderBottom pbs mam" style="margin: 10px; padding: 0px 0px 5px; font-weight: 700; font-size: 1.8rem; line-height: 2.4rem; border-bottom: 1px solid rgb(242, 242, 242) !important; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Business Information</h3>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Ship-From Address *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="TextBoxaddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Zip / Postal Code *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBoxzipcode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="State *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                        <h3 class="mbm ui-borderBottom pbs mam" style="margin: 10px; padding: 0px 0px 5px; font-weight: 700; font-size: 1.8rem; line-height: 2.4rem; border-bottom: 1px solid rgb(242, 242, 242) !important; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Bank Account</h3>                
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Bank *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Affin Bank</asp:ListItem>
                        <asp:ListItem>Alliance Bank</asp:ListItem>
                        <asp:ListItem>Ambank/AmFiance</asp:ListItem>
                        <asp:ListItem>Bank Islam</asp:ListItem>
                        <asp:ListItem>Bank Simpanan Nasional</asp:ListItem>
                        <asp:ListItem>CIMB Bank</asp:ListItem>
                        <asp:ListItem>CIMB Islamic Bank</asp:ListItem>
                        <asp:ListItem>HSBC Amanan</asp:ListItem>
                        <asp:ListItem>Maybank/Maybank Islamic</asp:ListItem>
                        <asp:ListItem>OCBC Bank</asp:ListItem>
                        <asp:ListItem>OCBC Al-Amin Bank</asp:ListItem>
                        <asp:ListItem>Public Bank</asp:ListItem>
                        <asp:ListItem>Public Islamic Bank</asp:ListItem>
                        <asp:ListItem>RHB Bank</asp:ListItem>
                        <asp:ListItem>RHB Islamic Bank</asp:ListItem>
                        <asp:ListItem>Standard Chartered Bank</asp:ListItem>
                        <asp:ListItem>UOB Berhad</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label14" runat="server" Text="Account Holder's Name *"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxaccname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label15" runat="server" Text="Account No. *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBoxaccno" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label16" runat="server" Text="All payment will be in bank transfer."></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <h3 class="mbm ui-borderBottom pbs mam" style="margin: 10px; padding: 0px 0px 5px; font-weight: 700; font-size: 1.8rem; line-height: 2.4rem; border-bottom: 1px solid rgb(242, 242, 242) !important; color: rgb(64, 64, 64); font-family: Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Required Documents</h3>   

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="A copy of MyKad/Passport *"></asp:Label>
                    <asp:FileUpload ID="FileUploadic" runat="server"  placeholder="Supported file types : jpg, gif, pdf, Max file size: 3MB" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label18" runat="server" Text="A copy of passbook *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUploadpassbook" runat="server"  placeholder="Supported file types : jpg, gif, pdf, Max file size: 3MB"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label19" runat="server" Text="* Required fields"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes, I agree to the Terms &amp; Conditons **" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Buttoncancel" runat="server" Text="Cancel" style="font-size: 1em; osition: relative; background:red; -moz-border-radius:3px; -webkit-border-radius:3px;	border-radius:3px;	border:1px solid red;cursor:pointer;color:#ffffff; padding:12px 60px;    box-shadow: 2px 2px 10px #6E6E6E;    display: inline-block;"/>
                    <asp:Button ID="Buttonsignup" runat="server" Text="Sign Up" style="font-size: 1em;  position: relative;    background:black; -moz-border-radius:3px;
	-webkit-border-radius:3px; 	border-radius:3px;	border:1px solid black;	cursor:pointer;	color:#ffffff;	padding:12px 60px;    box-shadow: 2px 2px 10px #6E6E6E;    display: inline-block;" />
                    &nbsp;</td>
            </tr>
        </table>
        <br />
</asp:Content>
