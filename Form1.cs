using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SbsSW.SwiPlCs;
using NUnit.Framework;
using Load_Input;

namespace Winform
{
    public partial class Form1 : Form
    {
        Load_Input.LoadInput connect;
        public Form1()
        {
            Environment.SetEnvironmentVariable("SWI_HOME_DIR", @"C:\\Program Files\\swipl");
            Environment.SetEnvironmentVariable("Path", @"C:\\Program Files\\swipl");
            Environment.SetEnvironmentVariable("Path", @"C:\\Program Files\\swipl\\bin");
            Environment.SetEnvironmentVariable("SWI_HOME_DIR", @"the_PATH_to_boot64.prc");
            
           InitializeComponent();

        }

        private void bt_load_click(object sender, EventArgs e)
        {
            //no thing
        
        
            connect = new LoadInput();
            OpenFileDialog op = new OpenFileDialog();
            op.Filter = "File Prolog|*.pl";
            op.ShowDialog();
            string FilePath = op.FileName;
            connect.LoadFile(FilePath);
            MessageBox.Show("Successfull");
            this.bt_query.Enabled = true;

        }
        
        private void bt_Query_Click(object sender, EventArgs e)
        {
            if (this.txb_qr.Text != null)
            {
                string s = connect.Result(this.txb_qr.Text);
                this.txb_result.Text = s;
            }
            else
                MessageBox.Show("Input your Query!");
        }

         }
}
