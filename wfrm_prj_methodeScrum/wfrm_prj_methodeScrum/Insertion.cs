using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace wfrm_prj_methodeScrum
{
    public partial class Insertion : Form
    {
        
        public Insertion()
        {
            InitializeComponent();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void Insertion_Load(object sender, EventArgs e)
        {
            tbNomJeu.Visible = false;
            cbConsoleJEU.Visible = false;
            cbEtatJeu.Visible = false;
            lbConsoleJEU.Visible = false;
            lbEtatJEU.Visible = false;
            lbJEU.Visible = false;
            btGO.Visible = true;

            tbIdConsole.Visible = false;
            tbNomConsole.Visible = false;
            lbIdConsole.Visible = false;
            lbNomConsole.Visible = false;

            tbMarque.Visible = false;
            tbEtat.Visible = false;
            lbEtat.Visible = false;
            lbmarque.Visible = false;


        }

        private void rbJv_CheckedChanged(object sender, EventArgs e)
        {
            tbNomJeu.Visible = true;
            cbConsoleJEU.Visible = true;
            cbEtatJeu.Visible = true;
            lbConsoleJEU.Visible = true;
            lbEtatJEU.Visible = true;
            lbJEU.Visible = true;
            btGO.Visible = true;

            tbIdConsole.Visible = false;
            tbNomConsole.Visible = false;
            lbIdConsole.Visible = false;
            lbNomConsole.Visible = false;

            tbMarque.Visible = false;
            tbEtat.Visible = false;
            lbEtat.Visible = false;
            lbmarque.Visible = false;

        }

        private void rbConsole_CheckedChanged(object sender, EventArgs e)
        {
            tbIdConsole.Visible = true;
            tbNomConsole.Visible = true;
            lbIdConsole.Visible = true;
            lbNomConsole.Visible = true;


            tbNomJeu.Visible = false;
            cbConsoleJEU.Visible = false;
            cbEtatJeu.Visible = false;
            lbConsoleJEU.Visible = false;
            lbEtatJEU.Visible = false;
            lbJEU.Visible = false;
            btGO.Visible = true;

            tbMarque.Visible = false;
            tbEtat.Visible = false;
            lbEtat.Visible = false;
            lbmarque.Visible = false;


        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            tbMarque.Visible = true;
            tbEtat.Visible = true;
            lbEtat.Visible = true;
            lbmarque.Visible = true;

            tbNomJeu.Visible = false;
            cbConsoleJEU.Visible = false;
            cbEtatJeu.Visible = false;
            lbConsoleJEU.Visible = false;
            lbEtatJEU.Visible = false;
            lbJEU.Visible = false;

            tbIdConsole.Visible = false;
            tbNomConsole.Visible = false;
            lbIdConsole.Visible = false;
            lbNomConsole.Visible = false;
            btGO.Visible = true;
        }

        private void btGO_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(@"Data Source=BTS2020-19\SQLEXPRESS;Initial Catalog=Micromanio;Integrated Security=True");
            try
            {
                if (sqlCon.State == ConnectionState.Closed)
                    sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("prc_AjouterJeux", sqlCon);
                sqlCmd.Parameters.AddWithValue("@mode", "Add");
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@nom", tbNomJeu.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@idEtat", cbEtatJeu.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@idConsole", cbConsoleJEU.Text.Trim());
                sqlCmd.ExecuteNonQuery();
                MessageBox.Show("Jeu bien ajouté");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erreur");
            }
            finally
            {
                sqlCon.Close();
            }
        }

        
    }
}
