using RestSharp;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Json;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliadores_Empresas
{
    public partial class PaginaTestePaypal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //here i temporary use my name as logged in user you can create login page after only make an order
            Session["user"] = "LuisProj";

            //After user clik buy now button store that details into the sql server "purchase" table for reference            
            /*   string query = "";
               query = "insert into purchase(pname,pdesc,price,uname) values('" + l1.Text + "','" + l2.Text + "','" + l3.Text.Replace("$", "") + "','" + Session["user"].ToString() + "')";
               sqlcon.Open();
               sqlcmd = new SqlCommand(query, sqlcon);
               sqlcmd.ExecuteNonQuery();
               sqlcon.Close();*/

            //Pay pal process Refer for what are the variable are need to send http://www.paypalobjects.com/IntegrationCenter/ic_std-variable-ref-buy-now.html

            string redirecturl = "";

            //Mention URL to redirect content to paypal site
            redirecturl += "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + ConfigurationManager.AppSettings["paypalemail"].ToString();

            //First name i assign static based on login details assign this value
            redirecturl += "&first_name=" + Session["user"].ToString();

            //City i assign static based on login user detail you change this value
            redirecturl += "&city=alcochete";

            //State i assign static based on login user detail you change this value
            redirecturl += "&state=portugal";

            //Product Name
            redirecturl += "&item_name=Paypal";

            //Product Amount
            redirecturl += "&amount=10";

            //Business contact id
            //redirecturl += "&business=nravindranmca@gmail.com";

            //Add quatity i added one only statically 
            redirecturl += "&quantity=1";

            //Currency code 
            redirecturl += "&currency=EUR";

            //Success return page url
            redirecturl += "&return=" + ConfigurationManager.AppSettings["SuccessURL"].ToString();

            //Failed return page url
            redirecturl += "&cancel_return=" + ConfigurationManager.AppSettings["FailedURL"].ToString();

            Response.Redirect(redirecturl);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Stripe.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var client = new RestClient("https://replica.eupago.pt/clientes/rest_api/multibanco/create");
            var request = new RestRequest(Method.POST);
            request.AddHeader("postman-token", "38f5eb57-63d2-b8bb-575e-268f2f1d1299");
            request.AddHeader("cache-control", "no-cache");
            request.AddHeader("content-type", "application/json");
            request.AddParameter("application/json", "{\r\n\"chave\" : \"demo-f706-5d02-dff2-e0a\",\r\n\"valor\" : \"1\",\r\n\"id\" : \"2\"\r\n}\r\n", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);
            var a = JsonValue.Parse(response.Content);

            Label1.Text = a["referencia"].ToString().Trim('"');
        }
    }
} 