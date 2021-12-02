using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace matWebForms
{
    public class foundAnimalModel
    {
        public string eartag { get; set; }
        public string brand { get; set; }
        public string type { get; set; }
        public string color { get; set; }
        public string dateFound { get; set; }
        public string location { get; set; }
        public string description { get; set; }
        public string imageSrc { get; set; }
        public string contactEmail { get; set; }

        public foundAnimalModel(string a, string b, string c, string d, string e, string f, string g, string h, string i)
        {

            eartag = a;
            brand = b;
            type = c;
            color = d;
            dateFound = e;
            location = f;
            description = g;
            imageSrc = h;
            contactEmail = i;
        }
    }
}

