using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matWebForms
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string constr;
        SqlDataAdapter da;
        SqlDataAdapter da2;
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlConnection con;
        SqlConnection lostcon;

        protected void Page_Load(object sender, EventArgs e)
        {
            constr = @"Data Source=PRFAB-LAB2PC-27\SQLEXPRESS;Initial Catalog=matimelaDB;Persist Security Info=True;User ID=sa;Password=Biust@2021";
       

        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            //calling the function on the click of a button
            bindData(txtInput.Text.Trim());
            bindDataLost(txtInput.Text.Trim());
        }

        protected void bindData(string place) // function to bind to found animals data grid
        {
            try
            {
                con = new SqlConnection(constr);
                cmd.CommandText = "select type as [Animal kind], count(eartag) as Numbers from foundAnimals where location ='"+place+"' group by type;";
                cmd.Connection = con;
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);

                con.Open();
                cmd.ExecuteNonQuery();
                GridView1.DataSource = ds; //setting data source of the grid to the dataset returned
                GridView1.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
           

        } 
        protected void bindDataLost(string place) // function to bind to lost animals data grid
        {
            try
            {
                lostcon = new SqlConnection(constr);
                cmd2.CommandText = "select type as [Animal kind], count(eartag) as Numbers from lostAnimals where location ='"+place+"' group by type;";
                cmd2.Connection = lostcon;
                da2 = new SqlDataAdapter(cmd2);
                da2.Fill(ds2);

                lostcon.Open();
                cmd2.ExecuteNonQuery();
                GridView2.DataSource = ds2; //setting data source of the grid to the dataset returned
                GridView2.DataBind();

                lostcon.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
           

        }
    }
}