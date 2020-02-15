using ITDWA.Modules.VVID;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITDWA
{
    public partial class VVIDReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Modules/VVID/VVIDView");
            VVIDDatabaseController VVIDInsert = new VVIDDatabaseController();
            string vvidName = txtFirstName.Text;
            VVIDInsert.insertVVID(vvidName);
        }
    }
}