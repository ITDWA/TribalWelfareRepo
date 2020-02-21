using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace ITDWA.Common
{
    public class MDDataController : SQLCon
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


        public DataTable ddlmandalDatabind(DropDownList ddlname)
        {
            DataSet dst = new DataSet();

            dst = MDDataBind();

            ddlname.DataSource = dst.Tables[0];
            ddlname.DataBind();
            ddlname.DataTextField = "dist_name";
            ddlname.DataValueField = "dist_id";


            ddlname.DataBind();
            ddlname.Items.Insert(0, new ListItem("-select-", "0"));
            return dst.Tables[1];
        }

        public DataTable ddlmandalDatabind1(DropDownList ddlname1)
        {
            DataSet dst = new DataSet();

            dst = MDDataBind();

            ddlname1.DataSource = dst.Tables[1];
            ddlname1.DataBind();
            ddlname1.DataTextField = "mandal_name";
            ddlname1.DataValueField = "dist_id";


            ddlname1.DataBind();
            ddlname1.Items.Insert(0, new ListItem("-select-", "0"));
            return dst.Tables[1];
        }
    }
}