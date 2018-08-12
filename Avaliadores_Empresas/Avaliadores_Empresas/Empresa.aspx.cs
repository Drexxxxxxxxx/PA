using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.OleDb;
using System.Web.Services;

namespace Avaliadores_Empresas
{
    public partial class Empresa : System.Web.UI.Page
    {
        int contadorerro = 0;
        string[] id;
        /*    string[] Nome2;
            string[] N_Registo;
            string[] Email;
            string[] Telemovel;
            string[] Morada;
            string[] Ativo;
            string[] idAvaliador;
            string[] idArea;
            string[] Nome;
            string[] Longitude;
            string[] Latitude;*/

        protected void Page_Load(object sender, EventArgs e)
        {
            //// Saber se é Avaliador ?
            //if (!IsPostBack)
            //{
            //    string constr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
            //    // Codigo para registar
            //    MySqlConnection con = new MySqlConnection(constr);
            //    con.Open();
            //    string N_Avaliador = "SELECT * from TblEmpresa where id = @id";
            //    MySqlCommand comand = new MySqlCommand(N_Avaliador);
            //    try
            //   {
            //       comand.Parameters.AddWithValue("@id", Session["idAvaliador"].ToString());
            //    }
            //    catch
            //    {
            //        Response.Redirect("Login.aspx");
            //    }
            //    comand.Connection = con;
            //    comand.ExecuteNonQuery();

            //    MySqlDataReader read = comand.ExecuteReader();
            //    //SE EXISTIR ELE ENTRA NO IF
            //    if (read.Read())
            //    {
            //        TBoxPerfilNRegisto.Text = read[0].ToString();
            //        TBoxPerfilNome.Text = read[1].ToString();
            //        TBoxPerfilEmail.Text = read[3].ToString();
            //        TBoxPerfilTelefone.Text = read[4].ToString();
            //        TBoxPerfilApoliceSeguro.Text = read[5].ToString();
            //        DateTime myDate = DateTime.Parse(read[6].ToString());
            //        TBoxPerfilValidadeApolice.Text = myDate.ToString("yyyy-MM-dd");
            //        TBoxPerfilMorada.Text = read[7].ToString();
            //    }
            //    con.Close();
                

            //    DataTable dt = this.GetData("selectallAvaliadoresMorada");

            //    id = new string[dt.Columns.Count];


            //    DataRow drid = dt.Rows[0];


            //    for (int i = 0; i < drid.ItemArray.Length; i++)
            //    {
            //        id[i] = drid[i].ToString();
            //    }

            //    rptMarkers.DataSource = dt;
            //    rptMarkers.DataBind();

            //    rptMarkers2.DataSource = dt;
            //    rptMarkers2.DataBind();

            //    rptMarkers3.DataSource = dt;
            //    rptMarkers3.DataBind();
            //}
        }

        private DataTable GetData(string query)
        {
            string conString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
            MySqlCommand cmd = new MySqlCommand(query);
            using (MySqlConnection con = new MySqlConnection(conString))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Connection = con;

                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }



        protected void BtnPerfil_Click(object sender, EventArgs e)
        {
            InvisibleDiv();
            DivPerfil.Visible = true;
        }

        protected void BtnPesquisaAvaliacoes_Click(object sender, EventArgs e)
        {
            InvisibleDiv();
            DivPesquisaAvaliacoes.Visible = true;
        }

        protected void BtnPublicarPedidoAvaliacao_Click(object sender, EventArgs e)
        {
            InvisibleDiv();
            DivPublicarPedidoAvaliacao.Visible = true;
        }
        void InvisibleDiv()
        {
            DivMinhasAvaliacoes.Visible = false;
            DivPerfil.Visible = false;
            DivPesquisaAvaliacoes.Visible = false;
            DivPublicarPedidoAvaliacao.Visible = false;
        }

        protected void BtnPerfilConfirmar_Click(object sender, EventArgs e)
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
                // Codigo para registar
                MySqlConnection con = new MySqlConnection(constr);
                con.Open();

                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "altertblempresa";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("varN_Registo", TBoxPerfilNRegisto.Text.Trim());
                cmd.Parameters.AddWithValue("varNome", TBoxPerfilNome.Text.Trim());
                cmd.Parameters.AddWithValue("varEmail", TBoxPerfilEmail.Text.Trim());
                cmd.Parameters.AddWithValue("varTelefone", TBoxPerfilTelefone.Text.Trim());
                cmd.Parameters.AddWithValue("varApoliseSeguro", TBoxPerfilApoliceSeguro.Text.Trim());
                cmd.Parameters.AddWithValue("varValidadeApolise", TBoxPerfilValidadeApolice.Text.Trim());
                cmd.Parameters.AddWithValue("varMorada", TBoxPerfilMorada.Text.Trim());
                cmd.Parameters.AddWithValue("varid", Session["idAvaliador"].ToString());

                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Label1.Text = ex.Message;
            }

        }


        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("PublicarPedidoAvaliacao1.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("PublicarPedidoAvaliacao2.aspx");
        }

        protected void BtnMinhasAvaliacoes_Click(object sender, EventArgs e)
        {
            InvisibleDiv();
            DivMinhasAvaliacoes.Visible = true;

            int Avaliacaoid = 0;
            string Avaliacaotipo = "";
            string Avaliacaolocalizacao = "";
            string Avaliacaodeadline = "";
            string Avaliacaoempresa = "";


            // Saber se é Avaliador ?
            string constr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
            // Codigo para registar
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();
            string AllAvaliacoes = "SELECT * from tblavaliacao  where idEmpresa = @id";
            MySqlCommand comand = new MySqlCommand(AllAvaliacoes);
            comand.Parameters.AddWithValue("@id", Session["idAvaliador"].ToString());
            comand.Connection = con;
            comand.ExecuteNonQuery();

            MySqlDataReader read = comand.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Columns.Add("Tipo");
            dt.Columns.Add("Localizacao");
            dt.Columns.Add("Deadline");
            dt.Columns.Add("Empresa");

            //SE EXISTIR ELE ENTRA NO IF
            while (read.Read())
            {
                if (read[5].ToString() == "0")
                {
                    Avaliacaoid = Convert.ToInt16(read[0].ToString());
                    Avaliacaotipo = read[1].ToString();
                    //Avaliacaolocalizacao = Convert.ToInt16(read[2].ToString());
                    Avaliacaodeadline = read[3].ToString();
                    //Avaliacaoempresa = Convert.ToInt16(read[4].ToString());
                    MySqlConnection con2 = new MySqlConnection(constr);
                    con2.Open();
                    string NomeLocalizacao = "SELECT * from tblareasatuacao where id = @id";
                    MySqlCommand comand2 = new MySqlCommand(NomeLocalizacao);
                    comand2.Parameters.AddWithValue("@id", read[2].ToString());
                    comand2.Connection = con2;
                    comand2.ExecuteNonQuery();

                    MySqlDataReader read2 = comand2.ExecuteReader();
                    while (read2.Read())
                    {
                        Avaliacaolocalizacao = read2[1].ToString();
                    }
                    read2.Close();
                    con2.Close();

                    MySqlConnection con3 = new MySqlConnection(constr);
                    con3.Open();
                    string NomeEmpresa = "SELECT Nome FROM tblempresa WHERE id = @id";
                    MySqlCommand comand3 = new MySqlCommand(NomeEmpresa);
                    comand3.Parameters.AddWithValue("@id", read[4].ToString());
                    comand3.Connection = con3;
                    comand3.ExecuteNonQuery();

                    MySqlDataReader read3 = comand3.ExecuteReader();
                    while (read3.Read())
                    {
                        Avaliacaoempresa = read3[0].ToString();
                    }
                    read3.Close();
                    con3.Close();

                    DataRow dr = dt.NewRow();
                    dr["Tipo"] = Avaliacaotipo;
                    dr["Localizacao"] = Avaliacaolocalizacao;
                    dr["Deadline"] = Avaliacaodeadline;
                    dr["Empresa"] = Avaliacaoempresa;
                    dt.Rows.Add(dr);



                    //  ListBox1.Items.Add(Convert.ToString(Avaliacaoid));
                    /* ListBox2.Items.Add(Avaliacaotipo);
                     ListBox3.Items.Add(Avaliacaolocalizacao);
                     ListBox8.Items.Add(Avaliacaodeadline);
                     ListBox5.Items.Add(Avaliacaoempresa);*/
                }

            }
            GridView2.DataSource = dt;
            GridView2.DataBind();

            con.Close();
            read.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

 

    }
}
