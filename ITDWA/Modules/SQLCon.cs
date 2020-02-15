using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ITDWA
{
    public class SQLCon
    {
        public static SqlConnection cnn;

        public static void createCon()
        {
            string connetionString;            
            connetionString = @"Data Source=apvalletdev.cxh24ke4lzcx.ap-south-1.rds.amazonaws.com;Initial Catalog=AP_VALLET_DB;User ID=vallet_apps;Password=apps";
            cnn = new SqlConnection(connetionString);
            cnn.Open();
        }
    }
}