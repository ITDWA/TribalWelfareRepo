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
    public class CMTIDDatabaseController : SQLCon
    {

        public void insertCMTID(string CMTIDName, int CMTtxtAge, string CMTtxtGender, string CMTtxtCaste,string CMTIdentity,
            string CMTIdentityType, string CMTIdentityNo, string CMTdno, string CMTVillage, int CMTMandal, int CMTDistrict,
            string CMTpin, string CMTcontactNo, string CMTDesignation,string CMTReamrks)
        {

            // Initialize Connection
            SqlConnection con = GetConnection();

            // Initialize SQL Command
            string SP_Name = "prc_insert_cmt_det";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = SP_Name;

            //-- prepares command
            try
            {

                SqlParameter Parameters = new SqlParameter();

                cmd.Parameters.Add(new SqlParameter("@cmt_name", SqlDbType.VarChar));
                cmd.Parameters["@cmt_name"].Value = CMTIDName;
                
                cmd.Parameters.Add(new SqlParameter("@age", SqlDbType.Int));
                cmd.Parameters["@age"].Value = CMTtxtAge;

                cmd.Parameters.Add(new SqlParameter("@gender", SqlDbType.VarChar));
                cmd.Parameters["@gender"].Value = CMTtxtGender;

                cmd.Parameters.Add(new SqlParameter("@caste", SqlDbType.VarChar));
                cmd.Parameters["@caste"].Value = CMTtxtCaste;

                cmd.Parameters.Add(new SqlParameter("@cmt_identity", SqlDbType.VarChar));
                cmd.Parameters["@cmt_identity"].Value = CMTIdentity;

                cmd.Parameters.Add(new SqlParameter("@identity_type", SqlDbType.VarChar));
                cmd.Parameters["@identity_type"].Value = CMTIdentityType;

                cmd.Parameters.Add(new SqlParameter("@identity_no", SqlDbType.VarChar));
                cmd.Parameters["@identity_no"].Value = CMTIdentityNo;

                cmd.Parameters.Add(new SqlParameter("@d_no", SqlDbType.VarChar));
                cmd.Parameters["@d_no"].Value = CMTdno;

                cmd.Parameters.Add(new SqlParameter("@Village", SqlDbType.VarChar));
                cmd.Parameters["@Village"].Value = CMTVillage;

                cmd.Parameters.Add(new SqlParameter("@mandal_id", SqlDbType.VarChar));
                cmd.Parameters["@mandal_id"].Value = CMTMandal;


                cmd.Parameters.Add(new SqlParameter("@district_id", SqlDbType.VarChar));
                cmd.Parameters["@district_id"].Value = CMTDistrict;

                cmd.Parameters.Add(new SqlParameter("@pincode", SqlDbType.Int));
                cmd.Parameters["@pincode"].Value = CMTpin;

                cmd.Parameters.Add(new SqlParameter("@contact_no", SqlDbType.VarChar));
                cmd.Parameters["@contact_no"].Value = CMTcontactNo;

                cmd.Parameters.Add(new SqlParameter("@designation", SqlDbType.VarChar));
                cmd.Parameters["@designation"].Value = CMTDesignation;

                cmd.Parameters.Add(new SqlParameter("@remarks", SqlDbType.VarChar));
                cmd.Parameters["@remarks"].Value = CMTReamrks;
                cmd.Connection = con;

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