<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Buyer.Master" AutoEventWireup="true" CodeBehind="HomePage_B.aspx.cs" Inherits="ArtGallery.HomePage_B" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/HomePage.js" type="text/javascript"></script>
    <link href="css/HomePage.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
      	<div id="slider">
	        <a class="control_next">&gt;</a>
	        <a class="control_prev">&lt;</a>

        <ul>
            <li><img src="Images/1.jpg" width="1349px" height="550px" /></li>
            <li><img src="Images/2.jpg" width="1349px" height="550px" /></li>
            <li><img src="Images/3.jpg" width="1349px" height="550px" /></li>
            <li><img src="Images/4.jpg" width="1349px" height="550px" /></li>
            <li><img src="Images/5.jpg" width="1349px" height="550px" /></li>
        </ul>
        <div id="slider_desc">
            <h1 id="slider_title">Test Heading Test</h1>
            <p id="slider_detail">Test Description Test</p>
        </div>
    	</div>
    	<div id="content">
    		<h1>WHAT WE DO ...</h1>
    		<div id="content_desc" class="content_css">
	    		<h1>LATEST NEWS</h1>
	    		<h2>New Events and Exhibitions</h2>
	    		<h2>Available Now.</h2>
	    		<hr />
	    		<p><a href="News_B.aspx">FIND OUT MORE</a></p>
    		</div>
			<img src="Images/content_2.jpg" width="1349px" height="550px" />
			<h1>WHAT WE HAVE...</h1>
			<div id="content_desc1" class="content_css">
				<h2 id="h1_css">WELL-KNOWN ARTISTS</h2>
				<h2>Whose have profession and experience on painting art at their entire life.</h2>
				<p><a href="#">FIND OUT MORE</a></p>
			</div>
			<img src="Images/content_3.jpg" width="1349px" height="550px" />
			<div id="content_desc2" class="content_css">
				<h2 id="h1_css">ART GALLERY</h2>
				<h2>An original artists' work <br/>with a fair price on the market.</h2>
				<p><a href="#">FIND OUT MORE</a></p>
			</div>
			<img src="Images/content_1.jpg" width="1349px" height="550px" />
			<h1>GET TO KNOW US...</h1>
			<div id="img_desc">
				<h2>ABOUT US</h2>
				<h3>An interest story that wait you to discover!</h3>
				<br/><br/>
				<p><a href="About_B.aspx">READ MORE</a></p>
			</div>
			<div id="img_desc1">
				<h2>CONTACT US</h2>
				<h3>Feel free to contact us to let us know about you!</h3>
				<br/><br/>
				<p><a href="Contact_B.aspx">READ MORE</a></p>
			</div>

			<img id="img1" src="Images/content_4.jpg" width="400px" height="400px" />
			<img id="img2" src="Images/content_5.jpg" width="400px" height="400px" />
    	</div>
    </div>
</asp:Content>
