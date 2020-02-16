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
        string VPass;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            VVIDInsert();
            Response.Redirect("/Modules/VVID/VVIDView");
        }

        protected void VVIDInsert()
        {
            VVIDDatabaseController VVIDInsert = new VVIDDatabaseController();
            string vvidName = txtFirstName.Text + txtLastName.Text;
            string vvFatherName = txtFatherName.Text;
            int VtxtAge = Convert.ToInt16(txtAge.Text);
            string VtxtGender = txtGender.Text;
            string VtxtDOB = txtDOB.Text;
            string VtxtCaste = txtCaste.Text;
            string VIdentityType = txtIDType.Text;
            string VIdentityNo = txtIDNum.Text;
            string Vdno = txtDno.Text;
            string VVillage = txtVillage.Text;
            string VMandal = txtMandal.Text;
            string VDistrict = txtDistrict.Text;
            int VPin = Convert.ToInt16(txtPin.Text);
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