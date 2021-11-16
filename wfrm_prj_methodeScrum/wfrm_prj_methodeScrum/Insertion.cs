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
            btGO.Visible = false;

            tbIdConsole.Visible = false;
            tbNomConsole.Visible = false;
            lbIdConsole.Visible = false;
            lbNomConsole.Visible = false;
            


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
        }

        private void rbConsole_CheckedChanged(object sender, EventArgs e)
        {
            tbIdConsole.Visible = true;
            tbNomConsole.Visible = true;
            lbIdConsole.Visible = true;
            lbNomConsole.Visible = true;
            btGO.Visible = true;
            
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            tbMarque.Visible = true;
            tbEtat.Visible = true;
            lbEtat.Visible = true;
            lbmarque.Visible = true;
        }
    }
}
