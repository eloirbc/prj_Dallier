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
    public partial class Consultation : Form
    {
        public Consultation()
        {
            InitializeComponent();
        }

        private void Consultation_Load(object sender, EventArgs e)
        {
            rbConsole.Checked = false;
            rbJv.Checked = false;
        }

        private void lvConsole_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void lvJv_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void rbJv_CheckedChanged(object sender, EventArgs e)
        {
            lvConsole.Visible = false;
            lvEtat.Visible = false;
            lvMarques.Visible = false;
            lvJv.Visible = true;
        }

        private void rbConsole_CheckedChanged(object sender, EventArgs e)
        {
            lvJv.Visible = false;
            lvEtat.Visible = false;
            lvMarques.Visible = false;
            lvConsole.Visible = true;
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            lvConsole.Visible = false;
            lvJv.Visible = false;
            lvEtat.Visible = true;
            lvMarques.Visible = true;
        }
    }
}
