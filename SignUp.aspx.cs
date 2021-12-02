using System;
using System.Configuration;
using System.Data.SqlClient;

namespace matWebForms
{
    public partial class SignUp : System.Web.UI.Page

    {
        string strcon ;

        protected void Page_Load(object sender, EventArgs e)
        {
            strcon = @"Data Source=PRFAB-LAB2PC-27\SQLEXPRESS;Initial Catalog=matimelaDB;Persist Security Info=True;User ID=sa;Password=Biust@2021";
        }

        protected void signUpBtn_Click(object sender, EventArgs e)
        //sign up button when clicked
        {
            // Response.Write("<script>alert('testing');</script>");

            string omang = txtOmang.Text.Trim();
            string name = txtName.Text.Trim();
            string lastname = txtLastname.Text.Trim();
            string number = txtCellnumber.Text.Trim();
            string location = txtLocation.Text.Trim();
            string email = txtEmail.Text.Trim();
            string address = txtAddress.Text.Trim();

            string userId = txtOmang.Text.Trim();
            string username = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            SqlConnection con = new SqlConnection(strcon);
            SqlConnection con2 = new SqlConnection(strcon);

            try
                        {
                           


                            con2.Open();

                            string query2 = "insert into users (userID,username,upassword) VALUES ('"+userId+"','"+username+"','"+password+"')";

                            SqlCommand cmd2 = new SqlCommand(query2,con2);
                        
                            cmd2.ExecuteNonQuery();

                            con2.Close();

                            Response.Write("<script>alert('data has been sent to users!');</script>");

                        }
                        catch (Exception ex)
                        {
                            Response.Write("<script>alert('" + ex.Message + "');</script>");
                        }

            try
            {
                


                con.Open();

                string query = "INSERT INTO farmerDetails(omang,name,surname,location,cellNumber,email,address) VALUES('" + omang+"','"+name+"','"+lastname+"','"+location+"','"+number+"','"+email+"','"+address+"')";
                

                SqlCommand cmd = new SqlCommand(query, con);
          

                cmd.ExecuteNonQuery();
               

                con.Close();

                Response.Write("<script>alert('User "+ name+" has been registered!');</script>");

                Response.Redirect("Landing.aspx");




            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }





        }
    }
}