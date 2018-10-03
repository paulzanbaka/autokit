using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomationKit
{
    public partial class issDecomm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count == 0)
            {
                // Do Something


                Label1.Text = "Server is Not on Decommission List!";
                // Label1.BackColor = System.Drawing.Color.Gold;

            }
        }
    }
}