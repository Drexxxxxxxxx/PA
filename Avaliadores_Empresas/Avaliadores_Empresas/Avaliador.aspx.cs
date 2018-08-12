using MySql.Data.MySqlClient;
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
    public partial class Avaliador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    // Saber se é Avaliador ?
            //    string constr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
            //    // Codigo para registar
            //    MySqlConnection con = new MySqlConnection(constr);
            //    con.Open();
            //   string N_Avaliador = "SELECT * from tblavaliador where id = @id";
            //    MySqlCommand comand = new MySqlCommand(N_Avaliador);
            //    try
            //    {
            //        comand.Parameters.AddWithValue("@id", Session["idAvaliador"].ToString());
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
            //        TxtPerfilNRegisto.Text = read[0].ToString();
            //        TxtPerfilNome.Text = read[1].ToString();
            //        TxtPerfilEmail.Text = read[3].ToString();
            //        TxtPerfilTelemovel.Text = read[4].ToString();
            //        TxtPerfilApoliceSeguro.Text = read[5].ToString();
            //        DateTime myDate = DateTime.Parse(read[6].ToString());
            //        TxtPerfilValidadeApolice.Text = myDate.ToString("yyyy-MM-dd");
            //        TxtPerfilMorada.Text = read[7].ToString();
            //    }
            //    con.Close();
            //    bindddl();
            //    binLbox();
            //}
        }

        protected void BtnPerfil_Click(object sender, EventArgs e)
        {
            InvisibleDiv();
            DivPerfil.Visible = true;
        }

        protected void BtnAvaliacoesDisponiveis_Click(object sender, EventArgs e)
        {
            InvisibleDiv();
            DivAvaliacoesDisponiveis.Visible = true;
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
                string AllAvaliacoes = "SELECT * from tblavaliacao";
                MySqlCommand comand = new MySqlCommand(AllAvaliacoes);
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

                  /*  ListBox1.Items.Add(Convert.ToString(Avaliacaoid));
                    ListBox2.Items.Add(Avaliacaotipo);
                    ListBox3.Items.Add(Avaliacaolocalizacao);
                    ListBox4.Items.Add(Avaliacaodeadline);
                    ListBox5.Items.Add(Avaliacaoempresa);*/
                }
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

            con.Close();
            read.Close();
            /*   AllAvaliacoes = "SELECT * from tblareasatuacao where id = @id";
               comand = new MySqlCommand(AllAvaliacoes);
                   comand.Parameters.AddWithValue("@id", );
               comand.Connection = con;
               comand.ExecuteNonQuery();*/
        }

        protected void BtnTrabalhosRealizados_Click(object sender, EventArgs e)
        {
            InvisibleDiv();
            DivTrabalhosRealizados.Visible = true;
        }
        void InvisibleDiv()
        {
            DivPerfil.Visible = false; 
            DivAvaliacoesDisponiveis.Visible = false;
            DivTrabalhosRealizados.Visible = false;
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
                    dpPerfilArea.DataSource = dt;
                    dpPerfilArea.DataTextField = "Nome";
                    dpPerfilArea.DataValueField = "id";
                    dpPerfilArea.DataBind();
                }
            }
        }
        private void binLbox()
        {
            string constr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
            // Codigo para registar
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();

            MySqlCommand cmd = con.CreateCommand();          
            cmd.CommandText = "selectnometblavaliadorareas";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("varidAvaliador", Session["idAvaliador"].ToString());
                cmd.ExecuteNonQuery();

                MySqlDataReader read = cmd.ExecuteReader();
                //SE EXISTIR ELE ENTRA NO IF
                while (read.Read())
                {
                LBoxPerfilArea.Items.Add(new ListItem(read[4].ToString(), read[3].ToString()));
                    //limpar();
                }
                con.Close();
            
        }

        protected void BtnPerfilDropdown_Click(object sender, EventArgs e)
        {
            try
            {
                if (LBoxPerfilArea.Items.FindByValue(dpPerfilArea.SelectedValue.ToString()).Value == "")
                {

                }
            }
            catch
            {
                string constr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
                // Codigo para registar
                MySqlConnection con = new MySqlConnection(constr);
                con.Open();

                MySqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandText = "insertavaliadorareas";
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.AddWithValue("varidAvaliador", Convert.ToInt16(Session["idAvaliador"].ToString()));
                cmd2.Parameters.AddWithValue("varidArea", Convert.ToInt16(dpPerfilArea.SelectedValue.ToString()));

                cmd2.ExecuteNonQuery();
                con.Close();
                LBoxPerfilArea.Items.Clear();
                binLbox();
            }
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
                cmd.CommandText = "altertblavaliador";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("varN_Registo", TxtPerfilNRegisto.Text.Trim());
                cmd.Parameters.AddWithValue("varNome", TxtPerfilNome.Text.Trim());
                cmd.Parameters.AddWithValue("varEmail", TxtPerfilEmail.Text.Trim());
                cmd.Parameters.AddWithValue("varTelemovel", TxtPerfilTelemovel.Text.Trim());
                cmd.Parameters.AddWithValue("varApoliseSeguro", TxtPerfilApoliceSeguro.Text.Trim());
                cmd.Parameters.AddWithValue("varValidadeApolise", TxtPerfilValidadeApolice.Text.Trim());
                cmd.Parameters.AddWithValue("varMorada", TxtPerfilMorada.Text.Trim());
                cmd.Parameters.AddWithValue("varid", Session["idAvaliador"].ToString());
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (MySql.Data.MySqlClient.MySqlException ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (LBoxPerfilArea.SelectedIndex != -1)
            {
                string constr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
                // Codigo para registar
                MySqlConnection con = new MySqlConnection(constr);
                con.Open();
                string N_Avaliador = "DELETE FROM tblavaliadorareas WHERE idAvaliador = @idAvaliador AND idArea = @idarea; ";
                MySqlCommand comand = new MySqlCommand(N_Avaliador);
                comand.Parameters.AddWithValue("@idAvaliador", Session["idAvaliador"].ToString());
                comand.Parameters.AddWithValue("@idarea", LBoxPerfilArea.SelectedValue.ToString());
                comand.Connection = con;
                comand.ExecuteNonQuery();
                LBoxPerfilArea.Items.Clear();
                con.Close();
                binLbox();
            }

        }
    }
}