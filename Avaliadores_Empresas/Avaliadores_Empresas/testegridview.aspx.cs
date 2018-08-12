using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliadores_Empresas
{
    public partial class testegridview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
            string latlng = Latlnglat.Value;
            string hidden1 = Hidden1.Value;
            ListBox1.Items.Add(hidden1);
            string[] dates = latlng.Split(',');
            for (int i = 0; i < dates.Length; i++)
            {
                if (dates[i] != "")
                {
                    ListBox1.Items.Add(dates[2]);
                }
            }
            ListBox1.Items.Add(new ListItem("name", "value"));

        }
    }
}