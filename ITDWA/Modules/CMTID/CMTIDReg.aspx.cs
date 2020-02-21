using ITDWA.Common;
using ITDWA.Modules.VVID;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITDWA
{
    public partial class CMTIDReg : System.Web.UI.Page
    {
        DataTable dtMandal;
        MDDataController MDDataController = new MDDataController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dtMandal = MDDataController.ddlmandalDatabind(ddlDisctrict);
            }
        }

        protected void ddlDistOnSelectIndexChange(object sender, EventArgs e)
        {
            int dist_id = Convert.ToInt16(ddlDisctrict.SelectedItem.Value);

            ddlMandal.Enabled = false;
            ddlMandal.Items.Clear();
            if (dist_id > 0)
            {
                dtMandal = MDDataController.ddlmandalDatabind1(ddlMandal);
                DataRow[] dRow = dtMandal.Select("dist_id=" + dist_id.ToString());

                ddlMandal.DataSource = dRow.CopyToDataTable();
                ddlMandal.DataBind();
                ddlMandal.Enabled = true;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            CMTIDInsert();
            Response.Redirect("/Modules/VVID/VVIDView");
        }

        protected void CMTIDInsert()
        {
            CMTIDDatabaseController CMTIDInsert = new CMTIDDatabaseController();
            string CMTIdName = txtCMTName.Text;    
            int CMTtxtAge = Convert.ToInt16(txtCMTAge.Text);
            string CMTtxtGender = ddlCMTGender.Text;
            string CMTtxtCaste = txtCMTCast.Text;
            string CMTidentity = txtCMTIdentity.Text;
            string CMTIdentityType = txtCMTIDType.Text;
            string CMTIdentityNo = txtCMTIDNum.Text;
            string CMTdno = txtDno.Text;
            string CMTVillage = txtVillage.Text;
            int CMTMandal = 1;// ddlMandal.Text;
            int CMTDistrict = 2;// ddlDisctrict.Text;
            string CMTPin = txtPin.Text;
            string CMTcontactNo = contactnumber.Text;
            string CMTdesignation = txtDsignation.Text;
            string CMTremarks = txtRemarks.Text;


            //if (txtPass.Text == txtCnfPass.Text)
            //{
            //    VPass = txtPass.Text;
            //}
            //else
            //{
            //    VPass = txtPass.Text;
            //}

            CMTIDInsert.insertCMTID(CMTIdName, CMTtxtAge, CMTtxtGender, CMTtxtCaste, CMTidentity, CMTIdentityType,
                                  CMTIdentityNo, CMTdno, CMTVillage, CMTMandal, CMTDistrict, CMTPin, CMTcontactNo, CMTdesignation, CMTremarks);
        }

    }
}