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
                    FileUploadPicture.SaveAs(Server.MapPath("~/" + name));

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
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (IsPostBack && FileUploadPicture.PostedFile != null)
            {

                string name = Path.GetFileName(FileUploadPicture.PostedFile.FileName);


                FileUploadPicture.SaveAs(Server.MapPath("~/" + name));


                // Label1.Text = FileUpload1.FileName;

            }

        }
            //LinkButton1.Attributes.Add("onClick", "document.getElementById('" + FileUploadPicture.ClientID + "').click();return false;");
            //TextBoxPrice.Attributes.Add("onblur", "TextBoxPrice_LostFocus(TextBoxPrice.Text);");
            //System.IO.Stream fs = FileUploadPicture.PostedFile.InputStream;
            //System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            //Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            //string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            //ImageUpload.ImageUrl = "data:image/png;base64," + base64String;
            //ImageUpload.Visible = true;
            //}


        }
}