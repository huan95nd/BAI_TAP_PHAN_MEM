namespace connect_plc_mitsubisshi_to_visual_studio
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.axActMLUtlType1 = new AxActUtlTypeLib.AxActMLUtlType();
            ((System.ComponentModel.ISupportInitialize)(this.axActMLUtlType1)).BeginInit();
            this.SuspendLayout();
            // 
            // axActMLUtlType1
            // 
            this.axActMLUtlType1.Enabled = true;
            this.axActMLUtlType1.Location = new System.Drawing.Point(773, 12);
            this.axActMLUtlType1.Name = "axActMLUtlType1";
            this.axActMLUtlType1.OcxState = ((System.Windows.Forms.AxHost.State)(resources.GetObject("axActMLUtlType1.OcxState")));
            this.axActMLUtlType1.Size = new System.Drawing.Size(32, 32);
            this.axActMLUtlType1.TabIndex = 0;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.axActMLUtlType1);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.axActMLUtlType1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private AxActUtlTypeLib.AxActMLUtlType axActMLUtlType1;
    }
}

