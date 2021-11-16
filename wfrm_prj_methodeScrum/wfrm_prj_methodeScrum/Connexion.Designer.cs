
namespace wfrm_prj_methodeScrum
{
    partial class Connexion
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
            this.btInsertion = new System.Windows.Forms.Button();
            this.btSuppression = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btInsertion
            // 
            this.btInsertion.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btInsertion.Location = new System.Drawing.Point(12, 381);
            this.btInsertion.Name = "btInsertion";
            this.btInsertion.Size = new System.Drawing.Size(180, 57);
            this.btInsertion.TabIndex = 0;
            this.btInsertion.Text = "Insertion";
            this.btInsertion.UseVisualStyleBackColor = true;
            this.btInsertion.Click += new System.EventHandler(this.btInsertion_Click);
            // 
            // btSuppression
            // 
            this.btSuppression.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btSuppression.Location = new System.Drawing.Point(608, 381);
            this.btSuppression.Name = "btSuppression";
            this.btSuppression.Size = new System.Drawing.Size(180, 57);
            this.btSuppression.TabIndex = 1;
            this.btSuppression.Text = "Suppression";
            this.btSuppression.UseVisualStyleBackColor = true;
            this.btSuppression.Click += new System.EventHandler(this.btSuppression_Click);
            // 
            // Connexion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btSuppression);
            this.Controls.Add(this.btInsertion);
            this.Name = "Connexion";
            this.Text = "Connexion";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btInsertion;
        private System.Windows.Forms.Button btSuppression;
    }
}