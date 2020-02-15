using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ITDWA.Modules;
namespace ITDWA.Modules.VVID
{
    public class VVIDDatabaseController
    {
        //global connections string

        public void insertVVID(string VVIDName)
        {
            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select TutorialID,TutorialName from demotb";

            command = new SqlCommand(sql, SQLCon.cnn);
            
            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + "-" + dataReader.GetValue(1) + "</br>";
            }
        }

        public void RetVVID()
        {

        }

    }
}