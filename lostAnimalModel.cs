using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace matWebForms
{
    public class lostAnimalModel
    {
        
        public string eartag { get; set; }

        public string brand { get; set; }
        public string type { get; set; }
        public string color { get; set; }
        public string dateLost { get; set; }
        public string location { get; set; }
        public string description { get; set; }
        public string imageSrc { get; set; }

     /*  public lostAnimalModel() {

           this.eartag ="";
        this.brand = "";
        this.type = "";
        this.color = "";
        this.dateLost = "";
        this.location = "";
        this.description = "";
        this.imageSrc = "";
    }*/

     /*  public lostAnimalModel(string a, string b,string c, string d, string e, string f, string g, string h)
        {

            eartag = a;
            brand = b;
            type = c;
            color = d;
            dateLost = e;
            location = f;
            description = g;
            imageSrc = h;
        }*/

        public lostAnimalModel(string eartag, string brand, string type, string color, string dateLost, string location, string description, string imageSrc)
        {
            this.eartag = eartag;
            this.brand = brand;
            this.type = type;
            this.color = color;
            this.dateLost = dateLost;
            this.location = location;
            this.description = description;
            this.imageSrc = imageSrc;
        }
    }

   
}