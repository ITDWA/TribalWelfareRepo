using ITDWA.Modules.VVID;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITDWA
{
    public partial class AspirationsAndGrievances : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UploadStatusLabel.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/Modules/VVID/VVIDView");
            //VVIDDatabaseController VVIDInsert = new VVIDDatabaseController();
            //string vvidName = txtFirstName.Text;
            //VVIDInsert.insertVVID(vvidName);
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            // Specify the path on the server to
            // save the uploaded file to.
            String savePath = @"c:\temp\uploads\";

            // Before attempting to perform operations
            // on the file, verify that the FileUpload 
            // control contains a file.
            if (FileUpload1.HasFile)
            {
                // Append the name of the file to upload to the path.
                savePath += FileUpload1.FileName;

                // Call the SaveAs method to save the 
                // uploaded file to the specified path.
                // This example does not perform all
                // the necessary error checking.               
                // If a file with the same name
                // already exists in the specified path,  
                // the uploaded file overwrites it.
                FileUpload1.SaveAs(savePath);

                // Notify the user that the file was uploaded successfully.
                UploadStatusLabel.Visible = true;
                UploadStatusLabel.Text = "Your file was uploaded successfully.";
                saveToDB(FileUpload1.PostedFile);

                // Call a helper routine to display the contents
                // of the file to upload.
                //DisplayFileContents(FileUpload1.PostedFile);
            }
            else
            {
                UploadStatusLabel.Visible = true;
                // Notify the user that a file was not uploaded.
                UploadStatusLabel.Text = "You did not specify a file to upload.";
            }
        }

        protected void saveToDB(HttpPostedFile fileName)
        {
            UploadStatusLabel.Text = "our file was uploaded successfully.saveToDB method called";
        }
    }
}