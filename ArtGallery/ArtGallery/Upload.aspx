<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="ArtGallery.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Upload.css" rel="stylesheet" type="text/css" />
    <script src="js/Upload.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
      	<div id="image">
            <img src="Images/uploadImage.png" width="1349px" height="550px" />
              </div>
        
    	<div id="content">
                <div class="fileUpload">
                    <h1>Upload Your Product</h1>

                    <br/>
                    <asp:Label ID="LabelUpload" runat="server" Text="Drop or Click the black box to upload: " Font-Size="Medium"></asp:Label>
                    <asp:FileUpload ID="FileUploadPicture" runat="server" onchange="fileInfo" AllowMultiple="True" BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="10px" />
                    <asp:Button ID="UploadButton"  Text="Upload file" OnClick="UploadButton_Click" runat="server"> </asp:Button>
                    
                    <br/>
                    <asp:Image ID="ImageUpload" Visible="false" runat="server" Height="500px" Width="250px" />
                    <br/>
                    <asp:TextBox ID="TextBoxTitle" runat="server" placeholder="Product Title "></asp:TextBox>

                    <br/>
                    <textarea ID="TextAreaDescription" cols="20" rows="2" maxlength="100" placeholder="Product Description (max 100 words) "></textarea>
                    <br />
                    <%--<script>
                        document.getElementById("userinput").onblur = function () {

                            //number-format the user input
                            this.value = parseFloat(this.value.replace(/,/g, ""))
                                .toFixed(2)
                                .toString()
                                .replace(/\B(?=(\d{3})+(?!\d))/g, ",");

                            //set the numeric value to a number input
                            document.getElementById("number").value = this.value.replace(/,/g, "")

                        }
                        //function TextBoxPrice_LostFocus(text) {
                            <%--document.getElementById("<%=TextBoxPrice.ClientID %>").value = "RM 0.0" + text.value;--%>
                            
                            <%--switch (text.value.length) {
                                case 1:
                                    document.getElementById("<%=TextBoxPrice.ClientID %>").value = "RM 0.0" + text.value;
                                    break;
                                case 2:
                                    document.getElementById("<%=TextBoxPrice.ClientID %>").value = "RM 0." + text.value;
                                    break;
                                case 3:
                                case 4:
                                case 5:
                                    var data = text.value.replace(".", "");
                                    var first = data.substring(0, (data.length - 2));
                                    var second = data.substring(data.length - 2);
                                    var temp = Math.abs(first) + "." + second;
                                    document.getElementById("<%=TextBoxPrice.ClientID %>").value = "RM " + temp;
                                default:
                                    var data = text.value.replace(".", "");
                                    var first = data.substring(0, (data.length - 2));
                                    var second = data.substring(data.length - 2);
                                    var temp = Math.abs(first) + "." + second;
                                    document.getElementById("<%=TextBoxPrice.ClientID %>").value = "RM " + temp;
                            }
                        };

                    </script--%>
                    <input type="text" id="TextBoxPrice" placeholder="Product Price RM "/>
                    <br />
                    <asp:Label ID="lblCategory" runat="server" Text="Category: "></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Cubism</asp:ListItem>
                        <asp:ListItem>Fauvism</asp:ListItem>
                        <asp:ListItem>Abstract Art</asp:ListItem>
                        <asp:ListItem>Conceptual Art</asp:ListItem>
                        <asp:ListItem>Pop Art</asp:ListItem>
                        <asp:ListItem>Photorealism</asp:ListItem>
                        <asp:ListItem>Futurism</asp:ListItem>
                        <asp:ListItem>Impressionism</asp:ListItem>
                        <asp:ListItem>Minimalism</asp:ListItem>
                        <asp:ListItem>Hyperrealism</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <input id="Submit" type="submit" value="Submit" /><input id="Reset" type="reset" value="Reset" />
                    <br/>
                    <asp:Label ID="lblUploadStatus" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                
                </div>
    	</div>
    </div>
</asp:Content>
