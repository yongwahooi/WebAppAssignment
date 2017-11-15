using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArtGallery
{   
    public partial class Upload : System.Web.UI.Page
    {   
       
        protected void Page_Load(object sender, EventArgs e)
        {
            UploadButton.Attributes.Add("onclick", "return false;");
            if (IsPostBack && FileUploadPicture.PostedFile != null)
            {
                Boolean fileOK = false;
                String path = Server.MapPath("~/UploadedImages/");
                if (FileUploadPicture.HasFile)
                {
                    string name = Path.GetFileName(FileUploadPicture.PostedFile.FileName);
                   // FileUploadPicture.SaveAs(Server.MapPath("~/" + name));

                    String fileExtension =
                        System.IO.Path.GetExtension(FileUploadPicture.FileName).ToLower();
                    String[] allowedExtensions =
                        {".gif", ".png", ".jpeg", ".jpg"};
                    for (int i = 0; i < allowedExtensions.Length; i++)
                    {
                        if (fileExtension == allowedExtensions[i])
                        {
                            fileOK = true;
                        }
                    }
                }
                string message = "File could not be uploaded.";
                if (fileOK)
                {
                    try
                    {
                        message = "ok";
                        FileUploadPicture.PostedFile.SaveAs(path
                            + "1" + FileUploadPicture.FileName); //change to picID
                        //lblUploadStatus.Text = "File uploaded!";
                    }
                    catch (Exception ex)
                    {
                        message = "File could not be uploaded.";
                        //lblUploadStatus.Text = "File could not be uploaded.";
                    }

                }
                else
                {
                    message = "Cannot accept files of this type.";
                    //lblUploadStatus.Text = "Cannot accept files of this type.";
                }

                if (!message.Equals("ok"))
                {
                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    sb.Append("<script type = 'text/javascript'>");
                    sb.Append("Submit.onClick=function(){");
                    sb.Append("alert('");
                    sb.Append(message);
                    sb.Append("')};");
                    sb.Append("</script>");
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                }
                //Image_InsertItem();
            }
        }

        //public void Image_InsertItem()
        //{
        //    Gallery item = new Gallery();
        //    item.galName = TextBoxTitle.Text;
        //    item.galImage[0] = Byte.Parse("131");
        //    item.galID = "0111";
        //    item.desription = TextAreaDescription.Text;
        //    //item.galPrice = Decimal.Parse(TextBoxPrice.Text);

        //    //TryUpdateModel(item);
        //    if (ModelState.IsValid)
        //    {
        //        // Save changes here
        //        Database1Entities _db = new Database1Entities();
        //        _db.Galleries.Add(item);
        //        //_db.SaveChanges();
        //        lblUploadStatus.Text = "added to database";
        //        //Response.Redirect("/ViewBooks.aspx");
        //    }
        //}
        //protected void SubmitButton_Click(object sender, EventArgs e)
        //{
        //    if (IsPostBack && FileUploadPicture.PostedFile != null)
        //    {

        //        string name = Path.GetFileName(FileUploadPicture.PostedFile.FileName);

        //        FileUploadPicture.SaveAs(Server.MapPath("~/" + name));


        //    }

        //}


    }
}