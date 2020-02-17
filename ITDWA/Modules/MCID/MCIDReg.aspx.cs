using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITDWA.Common;

namespace ITDWA.Modules.MCID
{
    public partial class MCIDReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MDDataController MDDataController = new MDDataController();
            MDDataController.ddlmandalDatabind(ddlMandal);
            MDDataController.ddlmandalDatabind(ddlDisctrict);
        }
    }
}