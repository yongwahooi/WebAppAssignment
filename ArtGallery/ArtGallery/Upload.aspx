<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="ArtGallery.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Upload.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
      	<div id="image">
            <img src="Images/uploadImage.png" width="1349px" height="550px" />
              </div>
        
    	<div id="content">
    		<%--<form id="form1" runat="server">--%>
                <div class="fileUpload">
                    <h1>Upload your Collection</h1>

                    
                    <br/>
                    <asp:Label ID="LabelUpload" runat="server" Text="Drop or Click the black box to upload" Font-Size="Medium"></asp:Label>
                    <asp:FileUpload ID="FileUploadPicture" runat="server" onchange="fileInfo" AllowMultiple="True" BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="10px" />
                    <%--<asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <script type="text/javascript">
                        function fileInfo() {
                            document.getElementById('<%=TextBox1.ClientID%>').value = document.getElementById('<%=FileUploadPicture.ClientID%>').value;
                        }
                    </script>--%>
                    <br/>
                    <asp:Label ID="LabelTitle" runat="server" Text="Title: " Font-Size="Medium"></asp:Label>
                    <br/>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br/>
                    <asp:Label ID="LabelDescription" runat="server" Text="Description: " Font-Size="Medium"></asp:Label>
                    <br/>
                    <textarea id="TextArea1" cols="20" rows="2"></textarea>
                    <br />
                    <input id="Submit1" type="submit" value="Submit" /><input id="Reset" type="reset" value="Reset" />
                    <br/>
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                
                </div>
            <%--</form>--%>
    	</div>
    </div>
</asp:Content>
