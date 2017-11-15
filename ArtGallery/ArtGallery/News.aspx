<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="ArtGallery.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/News.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="body">
    <div id="img_scroll">
    	<h1>NEWS</h1>
    	<p>discover upcoming events and exhibitions.</p>
    </div>
    <div id="exhibitions">
        <h1>CURRENT EXHIBITIONS</h1>
        <hr />
        <div id="ex">
        <div id="img_desc">
            <img src ="Images/exhibition.jpg" width="650" height="400" />
        </div>
        <div id="desc">
            <h2>Through Rose-Tinted Glasses</h2>
            <p>Date : 6th December 2017 to 31st January 2018<br />
               Admission Hours : Tuesday-Sunday 11am-7pm.<br />
               Venue : RT01 Sixth Floor, The Gardens Mall, 59200, Kuala Lumpur, Malaysia.
               </p>
            <h3>Synopsis</h3>
            <p>The pieces presented in the ‘Through Rose-Tinted Glasses’ exhibition refer to both personal and social issues that are significant to the artists’ lives. However, instead of simply criticizing the realities, these artists are challenged to look at the conditions with optimism – to apply a positive angle that could even expand to finding a solution. They have highlighted something that has affected them, in the hope showing the viewers a new perspective on the issue at hand – a fresher way of looking at the world and coping with its complexities.</p>
        </div>
        </div>
        <div id="ex_1">
            <div id="desc_1">
            <h2>Mixed Gallery</h2>
            <p>Date : 3rd November 2017 to 31st December 2017<br />
               Admission Hours : Tuesday-Sunday 11am-7pm.<br />
               Venue : 17, Jalan Pawang, 54000, Kuala Lumpur, Malaysia.
            </p>
            <h3>Synopsis</h3>
            <p>Experience the lively, enthusiastic atmosphere of an opening night at la&middot;Gallery when artists, collectors, art lovers, media professionals, and diverse members of the art world gather to admire and appreciate the works on display.</p>
         </div>
        </div>
        <div id="ex_2">
        <div id="img_desc_2">
            <img src ="Images/exhibition_2.jpg" width="650" height="400" />
        </div>
        <div id="desc_2">
            <h2>Tectonics Trace</h2>
            <p>Date : 19th October 2017 to 31st Novemeber 2018<br />
               Admission Hours : Tuesday-Sunday 11am-7pm.<br />
               Venue : No. 2, Jalan Temerloh, Off Jalan Tun Razak,53200 Kuala Lumpur.
               </p>
            <h3>Synopsis</h3>
            <p>Featuring eighteen artists, Metamorphosis is an exhibition of contrast and change. The works on view present diverse and opposing perspectives on time, place, and the human condition, calling into question the arbitrary nature of boundaries. Through dynamic juxtapositions, the exhibition conjures feelings of harmony and mutual transformation despite the presence of difference. </p>
        </div>
        </div>
    </div>
    <div id="event">

    </div>
    </div>
</asp:Content>
