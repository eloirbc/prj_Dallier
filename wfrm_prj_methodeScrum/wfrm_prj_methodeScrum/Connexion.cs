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
    public partial class Connexion : Form
    {
        public Connexion()
        {
            InitializeComponent();
        }

        private void btInsertion_Click(object sender, EventArgs e)
        {
            //ouverture de ma form d'insertion
            Insertion insertion = new Insertion();
            insertion.Show();
            //fermeture de la form menu au passage
            this.Hide();
        }

        private void btSuppression_Click(object sender, EventArgs e)
        {
            //ouverture de ma form de suppression
            Suppression suppression = new Suppression();
            suppression.Show();
            //fermeture de la form menu au passage
            this.Hide();
        }
    }
}
