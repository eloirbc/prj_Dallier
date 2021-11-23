
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
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.label1 = new System.Windows.Forms.Label();
            this.rbJv = new System.Windows.Forms.RadioButton();
            this.rbConsole = new System.Windows.Forms.RadioButton();
            this.lvJv = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader4 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lvConsole = new System.Windows.Forms.ListView();
            this.columnHeader5 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader6 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader7 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.lvEtat = new System.Windows.Forms.ListView();
            this.Différents_Etats = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.lvMarques = new System.Windows.Forms.ListView();
            this.marques_dispo = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(179, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Souhaitez vous consulter : ";
            // 
            // rbJv
            // 
            this.rbJv.AutoSize = true;
            this.rbJv.Location = new System.Drawing.Point(192, 7);
            this.rbJv.Name = "rbJv";
            this.rbJv.Size = new System.Drawing.Size(122, 21);
            this.rbJv.TabIndex = 1;
            this.rbJv.TabStop = true;
            this.rbJv.Text = "les jeux-vidéos";
            this.rbJv.UseVisualStyleBackColor = true;
            this.rbJv.CheckedChanged += new System.EventHandler(this.rbJv_CheckedChanged);
            // 
            // rbConsole
            // 
            this.rbConsole.AutoSize = true;
            this.rbConsole.Location = new System.Drawing.Point(336, 7);
            this.rbConsole.Name = "rbConsole";
            this.rbConsole.Size = new System.Drawing.Size(107, 21);
            this.rbConsole.TabIndex = 2;
            this.rbConsole.TabStop = true;
            this.rbConsole.Text = "les consoles";
            this.rbConsole.UseVisualStyleBackColor = true;
            this.rbConsole.CheckedChanged += new System.EventHandler(this.rbConsole_CheckedChanged);
            // 
            // lvJv
            // 
            this.lvJv.BackColor = System.Drawing.Color.Azure;
            this.lvJv.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3,
            this.columnHeader4});
            this.lvJv.HideSelection = false;
            this.lvJv.Location = new System.Drawing.Point(12, 39);
            this.lvJv.Name = "lvJv";
            this.lvJv.Size = new System.Drawing.Size(681, 410);
            this.lvJv.TabIndex = 3;
            this.lvJv.UseCompatibleStateImageBehavior = false;
            this.lvJv.View = System.Windows.Forms.View.Details;
            this.lvJv.Visible = false;
            this.lvJv.SelectedIndexChanged += new System.EventHandler(this.lvJv_SelectedIndexChanged);
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "ID";
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Nom du jeu";
            this.columnHeader2.Width = 250;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "État";
            this.columnHeader3.Width = 100;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "Console";
            this.columnHeader4.Width = 100;
            // 
            // lvConsole
            // 
            this.lvConsole.BackColor = System.Drawing.Color.Azure;
            this.lvConsole.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader5,
            this.columnHeader6,
            this.columnHeader7});
            this.lvConsole.HideSelection = false;
            this.lvConsole.Location = new System.Drawing.Point(12, 39);
            this.lvConsole.Name = "lvConsole";
            this.lvConsole.Size = new System.Drawing.Size(681, 410);
            this.lvConsole.TabIndex = 4;
            this.lvConsole.UseCompatibleStateImageBehavior = false;
            this.lvConsole.View = System.Windows.Forms.View.Details;
            this.lvConsole.Visible = false;
            this.lvConsole.SelectedIndexChanged += new System.EventHandler(this.lvConsole_SelectedIndexChanged);
            // 
            // columnHeader5
            // 
            this.columnHeader5.Text = "ID";
            // 
            // columnHeader6
            // 
            this.columnHeader6.Text = "Nom de la console";
            this.columnHeader6.Width = 250;
            // 
            // columnHeader7
            // 
            this.columnHeader7.Text = "Marque";
            this.columnHeader7.Width = 200;
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Location = new System.Drawing.Point(446, 7);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(157, 21);
            this.radioButton1.TabIndex = 5;
            this.radioButton1.TabStop = true;
            this.radioButton1.Text = "les marques et états";
            this.radioButton1.UseVisualStyleBackColor = true;
            this.radioButton1.CheckedChanged += new System.EventHandler(this.radioButton1_CheckedChanged);
            // 
            // lvEtat
            // 
            this.lvEtat.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.Différents_Etats});
            this.lvEtat.HideSelection = false;
            this.lvEtat.Location = new System.Drawing.Point(12, 39);
            this.lvEtat.Name = "lvEtat";
            this.lvEtat.Size = new System.Drawing.Size(356, 410);
            this.lvEtat.TabIndex = 6;
            this.lvEtat.UseCompatibleStateImageBehavior = false;
            this.lvEtat.View = System.Windows.Forms.View.Details;
            // 
            // Différents_Etats
            // 
            this.Différents_Etats.Text = "Différents états :";
            this.Différents_Etats.Width = 300;
            // 
            // lvMarques
            // 
            this.lvMarques.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.marques_dispo});
            this.lvMarques.HideSelection = false;
            this.lvMarques.Location = new System.Drawing.Point(364, 39);
            this.lvMarques.Name = "lvMarques";
            this.lvMarques.Size = new System.Drawing.Size(329, 410);
            this.lvMarques.TabIndex = 7;
            this.lvMarques.UseCompatibleStateImageBehavior = false;
            this.lvMarques.View = System.Windows.Forms.View.Details;
            // 
            // marques_dispo
            // 
            this.marques_dispo.Text = "Marques disponibles :";
            this.marques_dispo.Width = 300;
            // 
            // Consultation
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(162)))), ((int)(((byte)(120)))), ((int)(((byte)(163)))));
            this.ClientSize = new System.Drawing.Size(705, 461);
            this.Controls.Add(this.lvMarques);
            this.Controls.Add(this.lvEtat);
            this.Controls.Add(this.radioButton1);
            this.Controls.Add(this.rbConsole);
            this.Controls.Add(this.rbJv);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lvConsole);
            this.Controls.Add(this.lvJv);
            this.Name = "Consultation";
            this.Text = "Consultation";
            this.Load += new System.EventHandler(this.Consultation_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.RadioButton rbJv;
        private System.Windows.Forms.RadioButton rbConsole;
        private System.Windows.Forms.ListView lvJv;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.ColumnHeader columnHeader4;
        private System.Windows.Forms.ListView lvConsole;
        private System.Windows.Forms.ColumnHeader columnHeader5;
        private System.Windows.Forms.ColumnHeader columnHeader6;
        private System.Windows.Forms.ColumnHeader columnHeader7;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.ListView lvEtat;
        private System.Windows.Forms.ColumnHeader Différents_Etats;
        private System.Windows.Forms.ListView lvMarques;
        private System.Windows.Forms.ColumnHeader marques_dispo;
    }
}