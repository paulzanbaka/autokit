using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomationKit
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FirstName"] is null)
            {
                // Session["SessionExpire"] = true;
                //  Response.Redirect("Welcome.aspx");



                // do something
                Server.Transfer("login.aspx");
            }
        }
    }
}