using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace matWebForms
{
    public class messageModel
    {
       

        public string sender { get; set; }
        public string reciever { get; set; }

        public string message { get; set; }

        public string date { get; set; }

        public string time { get; set; }

        public messageModel(string sender, string reciever, string message, string date, string time)
        {
            this.sender = sender;
            this.reciever = reciever;
            this.message = message;
            this.date = date;
            this.time = time;
        }
    }
}