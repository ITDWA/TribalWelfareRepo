using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace ITDWA.Common
{
    public class MDDataController:SQLCon
    {
        public DataSet MDDataBind()
        {
            // Initialize Connection
            SqlConnection con = GetConnection();

            // Initialize SQL Command
            string SP_Name = "prc_dist_mandl_list";
            SqlDataAdapter adpt = new SqlDataAdapter(SP_Name, con);
            DataSet dst = new DataSet();
            adpt.Fill(dst);
            return dst;
        }


        public void ddlmandalDatabind(DropDownList ddlname)
        {
            DataSet dst = new DataSet();
           
            dst = MDDataBind();
            if (ddlname.ID == "ddlMandal")
            {
                ddlname.DataSource = dst.Tables[1];
                ddlname.DataBind();
                ddlname.DataTextField = "mandal_name";
            }
            else
            {
                ddlname.DataSource = dst.Tables[0];
                ddlname.DataBind();
                ddlname.DataTextField = "dist_name";
            }
            ddlname.DataBind();
        }
    }
}