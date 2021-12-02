using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace matWebForms
{
    public class matimelafdb
    {
        string constr = "";

        public matimelafdb()
        {
            constr = @"Data Source=PRFAB-LAB2PC-27\SQLEXPRESS;Initial Catalog=matimelaDB;Persist Security Info=True;User ID=sa;Password=Biust@2021";
        }
        public bool generalInsert(SqlCommand cmd)
        {
            try

            {
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                cmd.Connection = con;

                int num = cmd.ExecuteNonQuery();
                return (num > 0);
                
            }


            catch (Exception e)
            {
                return false;
            }




        }

    }
}