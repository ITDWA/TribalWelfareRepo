using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ITDWA.Modules;
namespace ITDWA.Modules.VVID
{
    public class VVIDDatabaseController : SQLCon
    {

        public void insertVVID(string VVIDName, string vvFatherName, int VtxtAge, string VtxtGender, string VtxtDOB, string VtxtCaste,
            string VIdentityType, string VIdentityNo, string Vdno, string VVillage, string VMandal, string VDistrict, int VPin, string VcontactNo, string VPass)
        {

            // Initialize Connection
            SqlConnection con = GetConnection();

            // Initialize SQL Command
            string SP_Name = "prc_insert_v_user_det";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = SP_Name;

            //-- prepares command
            try
            {

                SqlParameter Parameters = new SqlParameter();

                cmd.Parameters.Add(new SqlParameter("@vv_name", SqlDbType.VarChar));
                cmd.Parameters["@vv_name"].Value = VVIDName;

                cmd.Parameters.Add(new SqlParameter("@father_name", SqlDbType.VarChar));
                cmd.Parameters["@father_name"].Value = vvFatherName;

                cmd.Parameters.Add(new SqlParameter("@age", SqlDbType.Int));
                cmd.Parameters["@age"].Value = VtxtAge;

                cmd.Parameters.Add(new SqlParameter("@gender", SqlDbType.VarChar));
                cmd.Parameters["@gender"].Value = VtxtGender;


                cmd.Parameters.Add(new SqlParameter("@caste", SqlDbType.VarChar));
                cmd.Parameters["@caste"].Value = VtxtCaste;

                cmd.Parameters.Add(new SqlParameter("@identity_type", SqlDbType.VarChar));
                cmd.Parameters["@identity_type"].Value = VIdentityType;

                cmd.Parameters.Add(new SqlParameter("@identity_no", SqlDbType.VarChar));
                cmd.Parameters["@identity_no"].Value = VIdentityNo;

                cmd.Parameters.Add(new SqlParameter("@d_no", SqlDbType.VarChar));
                cmd.Parameters["@d_no"].Value = Vdno;

                cmd.Parameters.Add(new SqlParameter("@Village", SqlDbType.VarChar));
                cmd.Parameters["@Village"].Value = VVillage;

                cmd.Parameters.Add(new SqlParameter("@mandal_name", SqlDbType.VarChar));
                cmd.Parameters["@mandal_name"].Value = VMandal;


                cmd.Parameters.Add(new SqlParameter("@district_name", SqlDbType.VarChar));
                cmd.Parameters["@district_name"].Value = VDistrict;

                cmd.Parameters.Add(new SqlParameter("@pincode", SqlDbType.Int));
                cmd.Parameters["@pincode"].Value = VPin;

                cmd.Parameters.Add(new SqlParameter("@contact_no", SqlDbType.VarChar));
                cmd.Parameters["@contact_no"].Value = VcontactNo;

                cmd.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar));
                cmd.Parameters["@password"].Value = VPass;
                cmd.Connection = con;

                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                Dispose(con);
            }
        }

        public void RetVVID()
        {


        }

    }
}