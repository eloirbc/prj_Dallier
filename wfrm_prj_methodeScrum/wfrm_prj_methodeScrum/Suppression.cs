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
    public partial class Suppression : Form
    {
        public Suppression()
        {
            InitializeComponent();

            rbConsole.Checked = false;
            rbJv.Checked = false;
            foreach (JeuVideo jeuVideo in Globale.jeuxVideos)
            {
                ListViewItem ligne = new ListViewItem();
                ligne.Text = jeuVideo.id;
                ligne.SubItems.Add(jeuVideo.title);
                ligne.SubItems.Add(jeuVideo.etat);
                ligne.SubItems.Add(jeuVideo.console);
                lvJv.Items.Add(ligne);
            }
        }

        private void lvJv_Click(object sender, EventArgs e)
        {
            int ind = lvJv.SelectedIndices[0];
            var result = MessageBox.Show("Voulez vous vraiment supprimer " + lvJv.Items[ind].SubItems[1].Text+ " ("+ lvJv.Items[ind].SubItems[2].Text + ") pour la " + lvJv.Items[ind].SubItems[3].Text+"?", "Suppression",
                                 MessageBoxButtons.YesNo,
                                 MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {

            }
        }

        private void rbJv_CheckedChanged_1(object sender, EventArgs e)
        {
            lvConsole.Visible = false;
            lvJv.Visible = true;
        }

        private void rbConsole_CheckedChanged_1(object sender, EventArgs e)
        {
            lvJv.Visible = false;
            lvConsole.Visible = true;
        }
    }
}
