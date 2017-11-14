<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="sellersignup.aspx.cs" Inherits="ArtGallery.sellersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/sellersignup.css" rel="stylesheet" type="text/css" />
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
    <style type="text/css">
        .auto-style1 {
            width: 232px;
        }
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            width: 232px;
            height: 37px;
        }
        .auto-style4 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="img_scroll">
    	<h1>WELCOME</h1>
    	<p>register an account to make your transactions.</p>
    </div>
    <div id="content" >
        <h1>New Seller Information</h1>
        <h2>Fill up the sign up form to be a part of us.</h2>
        <table id="form">
            <tr>
                <td colspan="2">
                    <h3>Personal Details</h3>

                </td>
            </tr>
            <tr  style="border-top: solid 1px black;">
                <td></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Name <span class='red'>*</span>"></asp:Label>
                  
                </td>
                <td style="margin-left: 50px">
                    <asp:TextBox ID="TextBoxname" runat="server" CssClass="textbox_style" placeholder="Name as per MyKad"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td id="ic_num" class="auto-style1" >
                    <asp:Label ID="Label3" runat="server" Text="IC No. <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="6" Width="60px" CssClass="textbox_ic" placeholder="XXXXXX"></asp:TextBox>&nbsp;-
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="2" Width="30px" CssClass="textbox_ic" placeholder="XX"></asp:TextBox>&nbsp;-
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="4" Width="50px" CssClass="textbox_ic" placeholder="XXXX"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
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
                <td class="auto-style1">
                    <asp:Label ID="Label11" runat="server" Text="Artist Name <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                     <asp:TextBox ID="TextBoxaname" runat="server" CssClass="textbox_style" placeholder="Artist Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Contact No. <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxcontactno" runat="server" CssClass="textbox_style" MaxLength="3" Width="40px" placeHolder="XXX"></asp:TextBox> &nbsp;-
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox_style" MaxLength="8" placeholder="XXXXXXXX" Width="90px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="E-mail Address <span class='red'>*</span>"></asp:Label>
                </td> 
                <td>
                    <asp:TextBox ID="TextBoxemail" runat="server" CssClass="textbox_style" placeholder="example123@gmail.com"></asp:TextBox>
                
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Text="Password <span class='red'>*</span>"></asp:Label>
               </td>
                <td>
                    <asp:TextBox ID="TextBoxpw" runat="server" CssClass="textbox_style" TextMode="Password" placeholder="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label10" runat="server" Text="Confirm Password <span class='red'>*</span>"></asp:Label>
                </td>                   
                 <td>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox_style" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style1">
                     <h3>Business Information</h3>
                </td>
            </tr>
            <tr  style="border-top: solid 1px black;">
                <td></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label12" runat="server" Text="Ship-From Address <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxaddress" runat="server" CssClass="textbox_style" placeholder="Ship-From Address"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Zip / Postal Code <span class='red'>*</span>"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxzipcode" runat="server" CssClass="textbox_style" placeholder="Zip / Postal Code"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="State <span class='red'>*</span>" ></asp:Label>
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
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style2">
                        <h3>Bank Account</h3>                
                </td>
            </tr>
            <tr  style="border-top: solid 1px black;">
                <td></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label13" runat="server" Text="Bank <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox_style">
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
                <td class="auto-style1">
                    <asp:Label ID="Label14" runat="server" Text="Account Holder's Name <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                     <asp:TextBox ID="TextBoxaccname" runat="server" CssClass="textbox_style" placeholder="Account Holder's Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label15" runat="server" Text="Account No. <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxaccno" runat="server" CssClass="textbox_style" placeholder="Account No."></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label16" runat="server" Text="*All payment will be in bank transfer." CssClass="desc"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <h3>Required Documents</h3>   
                </td>
            </tr>
            <tr  style="border-top: solid 1px black;">
                <td></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label17" runat="server" Text="A copy of MyKad/Passport <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUploadic" runat="server"  placeholder="Supported file types : jpg, gif, pdf, Max file size: 3MB" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label18" runat="server" Text="A copy of passbook <span class='red'>*</span>"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUploadpassbook" runat="server"  placeholder="Supported file types : jpg, gif, pdf, Max file size: 3MB"/>
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
