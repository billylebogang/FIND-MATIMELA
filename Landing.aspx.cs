using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matWebForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string constn = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            constn = @"Data Source=PRFAB-LAB2PC-27\SQLEXPRESS;Initial Catalog=matimelaDB;Persist Security Info=True;User ID=sa;Password=Biust@2021";
        }

        protected void signInBtn_Click(object sender, EventArgs e)
        {

        }

        protected void signUpBtnID_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void signInBtnSubmit_Click(object sender, EventArgs e) //button for signining into the system
        {

            string user = txtSignInEmail.Text.Trim();
            string userPassword = txtSignInPassword.Text.Trim();

            CheckUser(user,userPassword); // calling the method to check provided details
        }

        protected void CheckUser(string user, string pass) // method to check user password from the db
        {
            try

            {
                SqlConnection con = new SqlConnection(constn);
                string qury = "select * from users;";

                SqlCommand cmd = new SqlCommand(qury, con);


                con.Open();


                SqlDataReader dr = cmd.ExecuteReader();
                int omang = 0;


                cmd.Connection = con;

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        omang = dr.GetInt32(0);

                        if (dr.GetValue(1).ToString() == user && dr.GetValue(2).ToString() == pass)
                        {
                            
                            Session["username"] = dr.GetValue(1).ToString();
                            Response.Write("<script>alert('"+Session["username"]+"');</script>");

                            getFarmerDetails(omang);

                             Response.Redirect("UserDashboard.aspx");
                        }
                        else 
                        {
                            Response.Write("<script>alert('wrong credentials');</script>");
                        }

                       
                    }
                   
                }
               
               con.Close();
            }
            

            catch (Exception e)
            {
                Response.Write("<script>alert('something went wrong');</script>");
            }







        }



        public void getFarmerDetails(int inputOmang) // method to get user details and set session variable needs
        {
            try

            {
                SqlConnection con2 = new SqlConnection(constn);
                string query = "SELECT * FROM farmerDetails WHERE omang = "+inputOmang+"";

                SqlCommand cmd = new SqlCommand(query, con2);


                con2.Open();


                SqlDataReader dr = cmd.ExecuteReader();



                cmd.Connection = con2;

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        // Response.Write("<script>alert('" + dr.GetValue(1).ToString() + "');</script>");

                        Session["fOmang"] = dr.GetValue(0).ToString();
                        Session["fName"] = dr.GetValue(1).ToString();
                        Session["fSurname"] = dr.GetValue(2).ToString();
                        Session["fLocation"] = dr.GetValue(3).ToString();
                        Session["fCellnumber"] = dr.GetValue(4).ToString();
                        Session["fEmail"] = dr.GetValue(5).ToString();
                        Session["fAddress"] = dr.GetValue(6).ToString();

                    }

                }
                else 
                {
                    Response.Write("<script>alert('User details not registered, Please register or contact Admin for assistance');</script>");
                    Response.Redirect("SignUp.aspx");
                }

                con2.Close();
            }


            catch (Exception e)
            {
                Response.Write("<script>alert('something went wrong in sessions');</script>");
            }



        }
    }
}