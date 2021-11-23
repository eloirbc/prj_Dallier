using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Data.SqlClient;

namespace wfrm_prj_methodeScrum
{
    public partial class Menu : Form
    {   
        public Menu()
        {
            InitializeComponent();
        }

        private void contextMenuStrip1_Opening(object sender, CancelEventArgs e)
        {

        }

        private void seConnecterToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //ouverture de ma form de connexion
            Connexion connexion = new Connexion();
            connexion.Show();
            //fermeture de la form menu au passage
            this.Hide();
        }

        private void consulterLesÉlémentsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //ouverture de ma form de consultation
            Consultation consultation = new Consultation();
            consultation.Show();
            //fermeture de la form menu au passage
            this.Hide();
        }

        SqlConnection cnn;
        List<string> leJv = new List<string>();

        private void Menu_Load(object sender, EventArgs e)
        {
            string connetionString, leString = "";
            SqlCommand command;
            SqlDataReader reader;
            connetionString = @"Data Source=BTS2020-15\SQLEXPRESS;Initial Catalog=Micromanio;Integrated Security=True";
            cnn = new SqlConnection(connetionString);
            cnn.Open();
            command = new SqlCommand("select Jeux.id, Jeux.nom, libelle, Console.nom from Jeux inner join Etat on idEtat = Etat.id inner join Console on idConsole = Console.id", cnn);
            reader = command.ExecuteReader();
            while (reader.Read())
            {
                for (int i = 0; i < reader.FieldCount; i++)
                    leJv.Add(reader.GetValue(i).ToString());
                Globale.jeuxVideos.Add(new JeuVideo(leJv[0], leJv[1], leJv[2], leJv[3]));
                leJv.Clear();
            }
            cnn.Close();
        }
    }
}
