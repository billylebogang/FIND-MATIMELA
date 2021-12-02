using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace matWebForms
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string constr;
        protected void Page_Load(object sender, EventArgs e)


        {
            GridView1.DataBind();
            
            // my conncection string


            constr = @"Data Source=PRFAB-LAB2PC-27\SQLEXPRESS;Initial Catalog=matimelaDB;Persist Security Info=True;User ID=sa;Password=Biust@2021";

            string eartag;
            string brand;
            string type;
            string color;
            string dateFound;
            string location;
            string description;
            string imageSrc = "";
            string contactEmail;


            List<foundAnimalModel> foundAnimalsList = new List<foundAnimalModel>(); //creating a qhynamic arry to list all animals
            try

            {
                SqlConnection con = new SqlConnection(constr);

                string query = "select * from foundAnimals;"; // selection query

                SqlCommand cmd = new SqlCommand(query, con);


                con.Open();


                SqlDataReader dr = cmd.ExecuteReader();



                cmd.Connection = con;

                if (dr.HasRows)
                {
                    while (dr.Read()) //looping through the rows
                    {
                        // Response.Write("<script>alert('" + dr.GetValue(1).ToString() + "');</script>");
                        //setting the return values from reader
                        eartag = dr.GetString(0);
                        brand = dr.GetString(1);
                        type = dr.GetString(2);
                        color = dr.GetString(3);                        
                        object dateTime = dr.GetDateTime(4);
                        dateFound = Convert.ToString(dateTime);
                        location = dr.GetString(5);
                        description = dr.GetString(6);
                        //imageSrc = dr.GetString(7);
                        contactEmail = dr.GetString(8);

                        foundAnimalModel animal = new foundAnimalModel(eartag, brand, type, color, dateFound, location, description, imageSrc,contactEmail); //creating a lost anima object

                        foundAnimalsList.Add(animal); //adding it to dynamic array of animals

                    }

                }
                else
                {
                    Response.Write("<script>alert('something went wrong');</script>"); // this will show if the rows have ended or now rows
                }
                con.Close();
            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('something went wrong');</script>"); //showing exception
            }


            foundAnimalModel[] animalList = foundAnimalsList.ToArray(); //creating a static array from the dynamic array


            //next is to find a way to loop thru the list of animals a display to the page

            StringBuilder html = new StringBuilder("");

           /* foreach (var animal in animalList)

            {
                html.Append(" <div class= 'col m-3'> ");
                html.Append(" <div class= 'card shadow-sm'>");
                html.Append("<img src = '.. /images/eartag.jpg' class= 'card-img-top' alt='animal found'>");
                html.Append("<div class= 'card-body' > ");

                html.Append("<h5 class= 'card-img-overlay> <span class= 'bg-white p-1' > " + animal.eartag + " </span> </h5> ");

                html.Append("<div class= 'card-text' > ");

                html.Append("<P> "+animal.description+"</P>");
                html.Append("<h5>Animal details</h5>");
                html.Append("<p>location: " + animal.location + "</p>");
                html.Append(" <P> color:" + animal.color + "</P>");
                html.Append(" <P>sex:" + animal.type + "</P>");

                html.Append("</div>");

                html.Append("<div class= 'd-flex justify-content-between align-items-center' >");

                html.Append("<div class= 'btn-group'>");

                html.Append("<button type ='button' class= 'btn btn-sm btn-outline-secondary' > Contact owner</button >");

                html.Append("<button type = 'button' class= 'btn btn-sm btn-outline-secondary' > Seen</button>");

                html.Append("</div>");

                html.Append("<small class='text-muted' > 9 mins</small>");

                html.Append("</div>");

                /*html.Append("<div class= 'message-box mt-3' >");

                html.Append(" <input type = 'email' name = 'messagesEmail' id = 'messagesEmailId' class= 'form-control' placeholder = 'enter your email contact' >");

                html.Append("<textarea name = 'messages' id = 'messagesId' cols = '30' rows = '10' class= 'form-control my-2' placeholder = 'leave ur message here or contact' ></textarea>");

                html.Append("<button class= 'btn btn-sm btn-info m-2' > Send </button>");

                html.Append("</div>");

                html.Append("</div>");

                html.Append("</div>");

                html.Append("<div>");

                Ph1.Controls.Add(new Literal { Text = html.ToString() });
            }*/

            // Ph1.Controls.Add(new Literal { Text = html.ToString() });


           





        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}