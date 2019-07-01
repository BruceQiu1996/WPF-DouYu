using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CefSharp.WinForms;

namespace DouyuWPF.UserControls
{
    public partial class Chrome : UserControl
    {
        public ChromiumWebBrowser browser;
        public string address;
        public string Address
        {
            set
            {
                if (!string.IsNullOrEmpty(value))
                {
                    this.browser.Load(value);
                    address = value;
                }
            }
            get { return this.address; }
        }
        public Chrome()
        {
            InitializeComponent();
            InitBrowser();
        }
        public void InitBrowser()
        {
            browser = new ChromiumWebBrowser("www.baidu.com");
            this.Controls.Add(browser);
            browser.Dock = DockStyle.Fill;
        }
    }
}
