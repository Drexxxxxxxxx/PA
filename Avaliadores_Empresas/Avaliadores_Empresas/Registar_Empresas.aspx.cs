using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Avaliadores_Empresas
{
    public partial class Registar_Empresas : System.Web.UI.Page
    {
        public void Limpar()
        {
            email_emp.Text = "";       
            nome_emp.Text = "";
            pass_emp.Text = "";


        }

        private string Encrypt(string clearText)
        {
            string EncryptionKey = "avaliadores&empresas2018";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49,
                    0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(),
                   CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;

        }

        private string Decrypt(string cipherText)
        {
            string EncryptionKey = "avaliadores&empresas2018";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76,
                    0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(),
                   CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_regist_emp_Click(object sender, EventArgs e)
        {
            // Registar Empresa
            if (nome_emp.Text == "" || pass_emp.Text == "" || !email_emp.Text.Contains("@") || nregisto_emp.Text == "" || mobile_emp.Text.Length != 9 || apoliceseguro_emp.Text == "" || validseguro_emp.Text == "" || morada_emp.Text == "" || pass_emp.Text != confpass_emp.Text)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Erro')", true);
            }
            else
            {
                try
                {
                    int contadoremail = 1;
                    string constr = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
                    // Codigo para registar
                    MySqlConnection con = new MySqlConnection(constr);
                    con.Open();
                    string N_Avaliador = "SELECT id from tblavaliador where Email = @Email";
                    MySqlCommand comand = new MySqlCommand(N_Avaliador);
                    comand.Parameters.AddWithValue("@Email", email_emp.Text);
                    comand.Connection = con;
                    comand.ExecuteNonQuery();

                    MySqlDataReader read = comand.ExecuteReader();
                    //SE EXISTIR ELE ENTRA NO IF
                    if (read.Read())
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Já existe um avaliador com esse email')", true);
                        contadoremail = 0;
                        //limpar();

                    }
                    con.Close();
                    con.Open();
                    N_Avaliador = "SELECT id from tblempresa where Email = @Email";
                    comand = new MySqlCommand(N_Avaliador);
                    comand.Parameters.AddWithValue("@Email", email_emp.Text);
                    comand.Connection = con;
                    comand.ExecuteNonQuery();

                    read = comand.ExecuteReader();
                    //SE EXISTIR ELE ENTRA NO IF
                    if (read.Read())
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Já existe uma empresa com esse email')", true);
                        contadoremail = 0;
                        //limpar();

                    }
                    con.Close();

                    //SENÃO NÃO ENTRA
                    if (contadoremail == 1)
                    {
                        con.Open();

                        MySqlCommand cmd = con.CreateCommand();
                        cmd.CommandText = "insertempresa";
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("varN_Registo", nregisto_emp.Text.Trim());
                        cmd.Parameters.AddWithValue("varNome", nome_emp.Text.Trim());
                        cmd.Parameters.AddWithValue("varPass", Encrypt(pass_emp.Text.Trim()));
                        cmd.Parameters.AddWithValue("varEmail", email_emp.Text.Trim());
                        cmd.Parameters.AddWithValue("varTelefone", mobile_emp.Text.Trim());
                        cmd.Parameters.AddWithValue("varApoliseSeguro", apoliceseguro_emp.Text.Trim());
                        cmd.Parameters.AddWithValue("varValidadeApolise", validseguro_emp.Text.Trim());
                        cmd.Parameters.AddWithValue("varMorada", morada_emp.Text.Trim());
                        cmd.Parameters.AddWithValue("varAtivo", 0);

                        cmd.ExecuteNonQuery();
                        con.Close();


                        try
                        {
                            //MailMessage mail = new MailMessage();
                            //mail.From = new MailAddress("veterinariabobbytareco@gmail.com");
                            //mail.To.Add(txt_email.Text);
                            //mail.Subject = "Veterinária Bobby & Tareco";
                            //mail.Body = ("Bem Vindo em nome da Bobby & Tareco, <br /> Foi Registado com sucesso como Cliente da " +
                            //    "Veterinária Bobby & Tareco" + ",<br /><br />Dados Pessoais: <br />Email--> " + txt_email.Text + "" +
                            //    "<br />Palavra Passe--> " + txt_pass.Text + "<br/><br /> Cumprimentos,<br />A Direção");
                            //mail.IsBodyHtml = true;
                            //SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                            //smtp.Port = 25;
                            //smtp.Credentials = new System.Net.NetworkCredential("veterinariabobbytareco@gmail.com", "palavrapasse");
                            //smtp.EnableSsl = true;
                            //smtp.Send(mail);

                            //Response.Redirect("Login.aspx");
                        }
                        catch (Exception ex)
                        {

                        }

                    }



                }
                catch (MySql.Data.MySqlClient.MySqlException ex)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
                }
            }
        }
    }
}