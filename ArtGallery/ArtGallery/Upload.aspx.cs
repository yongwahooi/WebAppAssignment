using System;
using System.Collections.Generic;
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
            if (IsPostBack)
            {
                Boolean fileOK = false;
                String path = Server.MapPath("~/UploadedImages/");
                if (FileUploadPicture.HasFile)
                {
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

                if (fileOK)
                {
                    try
                    {
                        FileUploadPicture.PostedFile.SaveAs(path
                            + "1"+FileUploadPicture.FileName); //change to picID
                        lblUploadStatus.Text = "File uploaded!";
                    }
                    catch (Exception ex)
                    {
                        lblUploadStatus.Text = "File could not be uploaded.";
                    }
                }
                else
                {
                    lblUploadStatus.Text = "Cannot accept files of this type.";
                }
            }
            //LinkButton1.Attributes.Add("onClick", "document.getElementById('" + FileUploadPicture.ClientID + "').click();return false;");
            //TextBoxPrice.Attributes.Add("onblur", "TextBoxPrice_LostFocus(TextBoxPrice.Text);");
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            System.IO.Stream fs = FileUploadPicture.PostedFile.InputStream;
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            ImageUpload.ImageUrl = "data:image/png;base64," + base64String;
            ImageUpload.Visible = true;
        }
  



    }
}