<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Seller.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="ArtGallery.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/Upload.js" type="text/javascript"></script>
    <link href="css/Upload.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function readURL(input) {
            var value = $("#FileUploadPicture").val();
            if (value != '') {
                $("#fileUpload").submit();
            }

            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result)
                        .width(350)
                        .height(400);
                };

                reader.readAsDataURL(input.files[0]);

                $("#desc").css("opacity", "0");
                document.getElementById('prod_desc').value = "yes";
            }
        }

        function scroll_next() {
            var value = $("#prod_desc").val();
            if (value != '') {
                $(window).scrollTop($('#prod_h1').offset().top - 100);
            }
            else {
                alert("No file selected. Please select a file to upload");
                $(window).scrollTop($('#content').offset().top - 100);
            }
        }

        function reset() {
            alert("ok");
        }
      </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
    <div id="img_scroll">
    	<h1>UPLOAD PRODUCT</h1>
    	<p>make your art works available on our website.</p>
    </div>
    	<div id="content">
                <div class="fileUpload">
                    <div id="step1">
                    <h1>Step 1 - Upload Your Product</h1>
                        <hr />
                   <div id="upload_space">
                       <p id ="desc">Select or Drop File to Upload</p>
                       <img id="blah" src="#" alt="" />
                    <asp:FileUpload ID="FileUploadPicture" runat="server" CssClass="upload_hide" onchange="readURL(this);" />
                    </div>
                       <asp:Button ID="UploadButton"  Text="CONFIRM" CssClass="upload_button" runat="server" OnClientClick="scroll_next()"> </asp:Button>
                    <br/>
                  </div>
                  </div>
                    <div id="prod_desc">
                        <h1 id="prod_h1"> Step 2 - Product Details</h1>
                        <hr />
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
                    <asp:Button ID="ButtonSubmit" CssClass="ButtonSubmit" Text="SUBMIT"  runat="server"  OnClick="Page_Load" > </asp:Button>
                        <input id="Reset" class="Reset" type="reset" value="RESET" />
                    <br/>
                    <%--<asp:Label ID="lblUploadStatus" runat="server" Text="Label" Font-Size="Medium"></asp:Label>--%>
                </div>
          </div>
    	</div>
</asp:Content>
