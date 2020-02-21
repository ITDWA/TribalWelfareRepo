using ITDWA.Modules.VVID;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITDWA.Common;
using System.Data;

namespace ITDWA
{
    public partial class VVIDReg : System.Web.UI.Page
    {
        string VPass;
        DataTable dtMandal=null;
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
                DataRow[] dRow =  dtMandal.Select("dist_id=" + dist_id.ToString());
             
                ddlMandal.DataSource = dRow.CopyToDataTable();
                ddlMandal.DataBind();
                ddlMandal.Enabled = true;
            }
        }
    


    protected void btnRegister_Click(object sender, EventArgs e)
    {
        VVIDInsert();
        Response.Redirect("/Modules/VVID/VVIDView");
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        VVIDInsert();
        Response.Redirect("/Default.aspx");
    }

    protected void VVIDInsert()
    {
        VVIDDatabaseController VVIDInsert = new VVIDDatabaseController();
        string vvidName = txtFirstName.Text + txtLastName.Text;
        string vvFatherName = txtFatherName.Text;
        int VtxtAge = Convert.ToInt16(txtAge.Text);
        string VtxtGender = ddlVVGender.Text;
        string VtxtDOB = txtDOB.Text;
        string VtxtCaste = txtCaste.Text;
        string VIdentityType = txtIDType.Text;
        string VIdentityNo = txtIDNum.Text;
        string Vdno = txtDno.Text;
        string VVillage = txtVillage.Text;
        int VMandal = ddlMandal.SelectedIndex;
        int VDistrict = ddlDisctrict.SelectedIndex;
        int VPin = Convert.ToInt32(txtPin.Text);
        string VcontactNo = txtContact.Text;

        if (txtPass.Text == txtCnfPass.Text)
        {
            VPass = txtPass.Text;
        }
        else
        {
            VPass = txtPass.Text;
        }

        VVIDInsert.insertVVID(vvidName, vvFatherName, VtxtAge, VtxtGender, VtxtDOB, VtxtCaste,
                              VIdentityType, VIdentityNo, Vdno, VVillage, VMandal, VDistrict, VPin, VcontactNo, VPass);
    }
}
}