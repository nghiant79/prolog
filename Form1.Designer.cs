namespace Winform
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.txb_qr = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.bt_input = new System.Windows.Forms.Button();
            this.bt_query = new System.Windows.Forms.Button();
            this.txb_result = new System.Windows.Forms.TextBox();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.txb_result);
            this.panel1.Controls.Add(this.bt_query);
            this.panel1.Controls.Add(this.bt_input);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.txb_qr);
            this.panel1.Location = new System.Drawing.Point(12, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(249, 237);
            this.panel1.TabIndex = 0;
            // 
            // txb_qr
            // 
            this.txb_qr.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txb_qr.ForeColor = System.Drawing.SystemColors.ActiveBorder;
            this.txb_qr.Location = new System.Drawing.Point(70, 71);
            this.txb_qr.Name = "txb_qr";
            this.txb_qr.Size = new System.Drawing.Size(119, 20);
            this.txb_qr.TabIndex = 1;
            this.txb_qr.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txb_qr.TextChanged += new System.EventHandler(this.bt_load_click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(96, 43);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(62, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Input Query";
            this.label1.Click += new System.EventHandler(this.bt_load_click);
            // 
            // bt_input
            // 
            this.bt_input.Location = new System.Drawing.Point(30, 106);
            this.bt_input.Name = "bt_input";
            this.bt_input.Size = new System.Drawing.Size(72, 50);
            this.bt_input.TabIndex = 1;
            this.bt_input.Text = "Input File";
            this.bt_input.UseVisualStyleBackColor = true;
            // 
            // bt_query
            // 
            this.bt_query.Location = new System.Drawing.Point(142, 106);
            this.bt_query.Name = "bt_query";
            this.bt_query.Size = new System.Drawing.Size(87, 50);
            this.bt_query.TabIndex = 1;
            this.bt_query.Text = "Query";
            this.bt_query.UseVisualStyleBackColor = true;
            // 
            // txb_result
            // 
            this.txb_result.Location = new System.Drawing.Point(44, 183);
            this.txb_result.Name = "txb_result";
            this.txb_result.Size = new System.Drawing.Size(168, 20);
            this.txb_result.TabIndex = 1;
            this.txb_result.Text = "Result";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 261);
            this.Controls.Add(this.panel1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.bt_load_click);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txb_qr;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txb_result;
        private System.Windows.Forms.Button bt_query;
        private System.Windows.Forms.Button bt_input;
    }
}

