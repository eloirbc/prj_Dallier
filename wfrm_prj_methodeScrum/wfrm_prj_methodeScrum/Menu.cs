using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

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
    }
}
