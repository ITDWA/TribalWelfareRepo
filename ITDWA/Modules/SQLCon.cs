using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ITDWA
{
    public class SQLCon
    {
        //-- code to get a connection object
        public static SqlConnection GetConnection()
        {
            string str = ConfigurationManager.ConnectionStrings["ITDWAConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            return con;
        }

        //-- code to make sure to close connection and dispose the object
        public static void Dispose(SqlConnection con)
        {
            if (con.State == System.Data.ConnectionState.Open)
            con.Close();
            con.Dispose();
        }
       
    }
}