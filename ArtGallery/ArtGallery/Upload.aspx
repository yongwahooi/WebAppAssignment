<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="ArtGallery.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/Upload.js" type="text/javascript"></script>
    <link href="css/Upload.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function UploadFile() {
            var value = $("#FileUploadPicture").val();
            if (value != '') {
                $("#fileUpload").submit();
            }
        };

                </script>
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
                   
                    <asp:FileUpload ID="FileUploadPicture" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="10px" onchange="UploadFile()"/>
                    <asp:Button ID="UploadButton"  Text="Upload file"  runat="server"> </asp:Button>
                    <br/>
                    <asp:Image ID="ImageUpload" runat="server" Height="400px" Width="250px" Visible="False" />
                    <br/>
                    <asp:TextBox ID="TextBoxTitle" runat="server" placeholder="Product Title "></asp:TextBox>
                    <br/>
                    <textarea ID="TextAreaDescription" cols="20" rows="2" maxlength="100" placeholder="Product Description (max 100 words) "></textarea>
                    <br />
                    <script>
                        
                        function AppendDot(textbox) {
                            var text = textbox.value;
                            document.getElementById("<%=TextBoxPrice.ClientID %>").value = "";
                            //var price = 0;

                            if (text.indexOf(".") == -1) {
                                document.getElementById("<%=TextBoxPrice.ClientID %>").value =text + ".00";
                            }
                            else {
                                if ((text.length-text.indexOf(".")) == 2) {
                                    document.getElementById("<%=TextBoxPrice.ClientID %>").value = text + "0";
                                }
                                else { document.getElementById("<%=TextBoxPrice.ClientID %>").value = text;}                                 
                            }
                            
                            
                        }

                    </script>
                        <%--<input type="text" id="TextBoxPrice" placeholder="Product Price RM " onblur="process();" />--%>
                        <asp:TextBox runat="server" ID="TextBoxPrice" placeholder="Product Price RM " onchange="AppendDot(this);"></asp:TextBox >
                    <br />
                    <asp:Label ID="lblCategory" runat="server" Text="Category: " ></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="DropDownList1">
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
                    <asp:Button ID="ButtonSubmit" CssClass="ButtonSubmit" Text="Submit"  runat="server" OnClick="Page_Load" > </asp:Button><input id="Reset" class="Reset" type="reset" value="Reset" />
                    <br/>
                    <%--<asp:Label ID="lblUploadStatus" runat="server" Text="Label" Font-Size="Medium"></asp:Label>--%>
                
                </div>
    	</div>
    </div>
</asp:Content>
