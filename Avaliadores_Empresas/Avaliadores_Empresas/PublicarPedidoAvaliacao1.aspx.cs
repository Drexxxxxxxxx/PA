﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliadores_Empresas
{
    public partial class PublicarPedidoAvaliacao1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
                // Codigo para registar
                MySqlConnection con = new MySqlConnection(constr);
                con.Open();
                string N_Avaliador = "SELECT * from TblEmpresa where id = @id";
                MySqlCommand comand = new MySqlCommand(N_Avaliador);
                try
                {
                    comand.Parameters.AddWithValue("@id", Session["idAvaliador"].ToString());
                }
                catch
                {
                    Response.Redirect("Login.aspx");
                }
                comand.Connection = con;
                comand.ExecuteNonQuery();
                bindddl();
            }
        }
        private void bindddl()
        {
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["connString"].ConnectionString))
            using (MySqlCommand cmd = conn.CreateCommand())
            {
                MySqlDataAdapter adp = new MySqlDataAdapter("CALL `selectalltblareasatuacao`();", conn);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    DropDownList1.DataSource = dt;
                    DropDownList1.DataTextField = "Nome";
                    DropDownList1.DataValueField = "id";
                    DropDownList1.DataBind();
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
            // Codigo para registar
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();

            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "insertavaliacao";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("vartipo", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("varlocalizacao", DropDownList1.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("vardeadline", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("varidempresa", Session["idAvaliador"].ToString());
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Empresa.aspx");
        }
    }
}