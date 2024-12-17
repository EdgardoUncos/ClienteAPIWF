using ClienteAPIWF.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClienteAPIWF
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Proyecto> ListaProyectos = new List<Proyecto>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string apiUrl = "https://crud-rest-framework-django.onrender.com/api/projects/";

                try
                {
                    string result = ConsumirApi(apiUrl);
                    ListaProyectos = JsonConvert.DeserializeObject<List<Proyecto>>(result);
                }
                catch (Exception ex)
                {

                    string error = ex.Message; 
                }
                                
            }

        }

        private string ConsumirApi(string url)
        {
            WebRequest request = WebRequest.Create(url);
            request.Method = "GET";
            request.ContentType = "application/json";

            using (WebResponse response = request.GetResponse())
            using (Stream dataStream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(dataStream))
            {
                return reader.ReadToEnd();
            }
        }
    }
}