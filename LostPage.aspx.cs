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
    public partial class LostPage : System.Web.UI.Page
    {
        string constr = "";

        

        List<lostAnimalModel> lostAnimalsList = new List<lostAnimalModel>(); //creating a qhynamic arry to list all animals

        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewLost.DataBind();

            // my conncection string
            constr =@"Data Source=PRFAB-LAB2PC-27\SQLEXPRESS;Initial Catalog=matimelaDB;Persist Security Info=True;User ID=sa;Password=Biust@2021";

            string eartag;
            string brand;
            string type;
            string color;
            string dateLost;
            string location;
            string description;
            string imageSrc="";


           

            try

            {
                SqlConnection con = new SqlConnection(constr);

                string query = "select * from lostAnimals;"; // selection query

                SqlCommand cmd = new SqlCommand(query, con);


                con.Open();


                SqlDataReader dr = cmd.ExecuteReader();



                cmd.Connection = con;

                if (dr.HasRows)
                {
                    while (dr.Read()) //looping through the rows
                    {
                        

                        //setting the return values from reader
                        eartag = dr.GetString(0);
                        brand = dr.GetString(1);
                         type = dr.GetString(2);
                         color = dr.GetString(3);
                        object dateTime = dr.GetDateTime(4);
                        dateLost = Convert.ToString(dateTime);
                         location = dr.GetString(5);
                         description = dr.GetString(6);
                        

                        lostAnimalModel animal = new lostAnimalModel(eartag,brand,type,color,dateLost,location,description,imageSrc); //creating a lost anima object

                        lostAnimalsList.Add(animal); //adding it to dynamic array of animals


                        Response.Write("<script> </script>");

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


            lostAnimalModel[] animalList = lostAnimalsList.ToArray(); //creating a static array from the dynamic array


            //next is to find a way to loop thru the list of animals a display to the page


           


        }



        public lostAnimalModel[] returnAnimals() 
        {
            lostAnimalModel[] animalList = lostAnimalsList.ToArray(); //creating a static array from the dynamic array


            return animalList;
        } 

    }
}







