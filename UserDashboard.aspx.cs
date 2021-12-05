using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matWebForms
{
    public partial class UserDashboard : System.Web.UI.Page
    {

        string strcon;
        protected void Page_Load(object sender, EventArgs e)
        {
         
            strcon = @"Data Source=PRFAB-LAB2PC-27\SQLEXPRESS;Initial Catalog=matimelaDB;Persist Security Info=True;User ID=sa;Password=Biust@2021";

            getMessages();

            L1.Text = Session["username"].ToString();

            numberlabel.Text = Session["fCellnumber"].ToString();

            Locationlabel.Text = Session["fLocation"].ToString();

            namelabel.Text = Session["fName"].ToString();

            surnamelabel.Text = Session["fsurname"].ToString();


            loadBrands();
            loadTags();

           /* Session["fOmang"] = dr.GetValue(0).ToString();
            Session["fName"] = dr.GetValue(1).ToString();
            Session["fSurname"] = dr.GetValue(2).ToString();
            Session["fLocation"] = dr.GetValue(3).ToString();
            Session["fCellnumber"] = dr.GetValue(4).ToString();
            Session["fEmail"] = dr.GetValue(5).ToString();
            Session["fAddress"] = dr.GetValue(6).ToString();*/

        }

        protected void reportsLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reports.aspx");
        }

        protected void foundAnimals_Click(object sender, EventArgs e)
        {
            Response.Redirect("FoundPage.aspx"); //redirects to the found animals  page
        }

        protected void lostAnimalsLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("LostPage.aspx"); //directs to the loast animals page
        }

        protected void meesagesLink_Click(object sender, EventArgs e)
        {

        }

        protected void EditProfileLinkBtn_Click(object sender, EventArgs e) //for  editing the profile of the user
        {

        }

        protected void btnLostSubmit_Click(object sender, EventArgs e)
        //submitting to data table of the lost animals
        {


            SqlConnection con = new SqlConnection(strcon);

            try
            {



                con.Open();

                string lostQuery = "Insert into lostAnimals(eartag,brand,type,color,dateLost,location,description,imageSrc) " +
                        "Values ('" + txtLostTag.Text.Trim() + "', '" + txtLostBrand.Text.Trim() + "',  '" + lstLostType.SelectedValue.ToString() + "',  '" + txtLostColor.Text.Trim() + "',  '" + txtLostDate.Text.Trim() + "',  '" + txtLostLocation1.SelectedValue.ToString() + "',  '" + txtLostDescription.Text.Trim() + "',  '" + LostImage + "')";


                SqlCommand cmd2 = new SqlCommand(lostQuery, con);

                cmd2.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('data has been sent to users!');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

           
        }

        protected void foundSubmitBtn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(strcon);

            try
            {



                con.Open();

                string lostQuery = "Insert into foundAnimals(eartag,brand,type,color,dateFound,location,description,imageSrc,contactEmail) " +
                "Values ('" + txtFoundTag.Text.Trim() + "', '" + txtFoundBrand.Text.Trim() + "',  '" + lstFoundType.SelectedValue.ToString() + "',  '" + txtFoundColor.Text.Trim() + "',  '" + txtFoundDate.Text.Trim() + "',  '" + txtFoundLocation1.SelectedValue.ToString() + "',  '" + txtFoundDescription.Text.Trim() + "',  '" + foundImage + "','" + txtFoundEmail + "')";


                SqlCommand cmd2 = new SqlCommand(lostQuery, con);

                cmd2.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('data has been sent to users!');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


           
        }

        protected void updateTagBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);

            try
            {
                con.Open();

                string addTag = "INSERT INTO farmerTag(omang,eartag) VALUES('"+Session["fOmang"].ToString()+"','"+txtAddTag.Text.Trim()+"')";


                SqlCommand addCmd = new SqlCommand(addTag, con);

                addCmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('data has been sent to tags!');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' something went wrong');</script>");
            }


        }

        protected void CreateMessageBtn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(strcon);

            try
            {
                con.Open();

                string createMessage = "INSERT INTO message(senderID,recieverID,message) VALUES('" + Session["fEmail"].ToString() + "','" + recieverTxt.Text.Trim() + "','"+messageTxt.Text.Trim()+"')";


                SqlCommand createCmd = new SqlCommand(createMessage, con);

                createCmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('data has been sent to messages!');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' something went wrong to send to messages');</script>");
            }



           
        }




        public void getMessages() // to make this method to selct messages via a specifi brand so that  a
        {


            string sender;
            string reciever;
            string message;
            string date;
            string time;

            List<messageModel> messagesList = new List<messageModel>();


            try

            {
                SqlConnection con = new SqlConnection(strcon);

                string query = "select * from message where recieverID = '"+ Session["fEmail"].ToString()+ "';"; // selection query

                SqlCommand cmd = new SqlCommand(query, con);


                con.Open();


                SqlDataReader dr = cmd.ExecuteReader();

                cmd.Connection = con;

                if (dr.HasRows)
                {
                    while (dr.Read()) //looping through the rows
                    {


                        //setting the return values from reader
                        sender = dr.GetString(0);
                        reciever = dr.GetString(1);
                        message = dr.GetString(2);
                        object dateTime = dr.GetDateTime(3);
                        date = Convert.ToString(dateTime);
                        //object Time = dr.GetDateTime(4);
                        time = Convert.ToString(dateTime);



                        messageModel newMessage = new messageModel(sender, reciever, message, date, time); //creating a lost anima object

                        messagesList.Add(newMessage); //adding it to dynamic array of animals


                        Response.Write("<script> </script>");

                    }

                }
                else
                {
                   // Response.Write("<script>alert('something went wrong');</script>"); // this will show if the rows have ended or now rows
                }
                con.Close();
            }


            catch (Exception ex)


            {

                Console.WriteLine(ex);
                Response.Write("<script>alert('something went wrong');</script>"); //showing exception
            }


            messageModel[] messages = messagesList.ToArray(); //creating a static array from the dynamic array




            StringBuilder html = new StringBuilder();


            foreach (var msg in messages) {
                
                html.Append("<div class='card m-2 col' style='width:18rem;'>");

                html.Append("<div class='card-body'>");
                html.Append("<h5 class='card-title'>From :"+ msg.sender+"</h5>");
                html.Append("<p class='card-text m-3'> "+msg.message+"</p>");

                html.Append("<p class='card-text m-3'>Time:"+ msg.time + " ---Date: "+msg.date +"</p>");

                html.Append("<asp:Button ID='DeleteBtn' runat='server' Text='Delete' CssClass='btn btn-primary'/>");
                html.Append("</div>");
                html.Append("</div>");




            }

            holder.Controls.Add(new Literal { Text = html.ToString() });

        }

        protected void AddBrandBtn_Click(object sender, EventArgs e)
        {
            SqlConnection addBrandCon = new SqlConnection(strcon);

            try
            {
                addBrandCon.Open();

                string addTag = "INSERT INTO farmerBrand(omang,brand) VALUES('" + Session["fOmang"].ToString() + "','" + txtAddBrand.Text.Trim() + "')";


                SqlCommand addCmd = new SqlCommand(addTag, addBrandCon);

                addCmd.ExecuteNonQuery();

                addBrandCon.Close();

                Response.Write("<script>alert('data has been sent to Brands!');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' something went wrong adding to brands');</script>");
            }

        }

        public void loadTags() 
        {
            try 
            { 
                SqlConnection loadTagsCon = new SqlConnection(strcon);

            string query = "Select * from farmerTag where omang = " + Session["fOmang"] + ";";
            SqlDataAdapter adpt = new SqlDataAdapter(query,loadTagsCon);

            DataTable dt = new DataTable();
            adpt.Fill(dt);
            animalTagList.DataSource = dt;
            animalTagList.DataBind();
            animalTagList.DataTextField = "earTag";
            animalTagList.DataValueField = "omang";
            animalTagList.DataBind();


                loadTagsCon.Close();
            
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' something went wrong getting to tags');</script>");
            }


        }

        public void loadBrands()
        {
            try
            {
                SqlConnection loadBrandsCon = new SqlConnection(strcon);

                string query = "Select * from farmerBrand where omang = "+Session["fOmang"]+";";
                SqlDataAdapter adpt = new SqlDataAdapter(query, loadBrandsCon);

                DataTable dt = new DataTable();
                adpt.Fill(dt);
                brandList.DataSource = dt;
                brandList.DataBind();
                brandList.DataTextField = "brand";
                brandList.DataValueField = "omang";
                brandList.DataBind();

                loadBrandsCon.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' something went wrong getting to brands');</script>");
            }


        }
    }
}