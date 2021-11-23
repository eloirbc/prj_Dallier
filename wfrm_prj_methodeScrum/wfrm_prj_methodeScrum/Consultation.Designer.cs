
namespace wfrm_prj_methodeScrum
{
    partial class Consultation
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(162)))), ((int)(((byte)(120)))), ((int)(((byte)(163)))));
            this.ClientSize = new System.Drawing.Size(705, 461);
            this.Controls.Add(this.rbConsole);
            this.Controls.Add(this.rbJv);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lvJv);
            this.Controls.Add(this.lvConsole);
            this.Name = "Consultation";
            this.Text = "Consultation";
        }

        #endregion
    }
}