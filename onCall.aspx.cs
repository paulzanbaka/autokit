using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.DirectoryServices;
using System.DirectoryServices.AccountManagement;

namespace AutomationKit
{
    public partial class onCall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pzGetGroup();

        }
        public void pzGetGroup()
        {

            // set up domain context
            PrincipalContext ctx = new PrincipalContext(ContextType.Domain);

            // find the group in question
            GroupPrincipal group = GroupPrincipal.FindByIdentity(ctx, "IT EWS OnCall");

            // if found....
            if (group != null)
            {
                // iterate over members
                foreach (Principal p in group.GetMembers())
                {
                    //Console.WriteLine("{0}: {1}", p.StructuralObjectClass, p.DisplayName);

                    // do whatever you need to do to those members
                    UserPrincipal theUser = p as UserPrincipal;
                    Label1.Text = p.DisplayName;
                    Label2.Text = "RACF=" + p.SamAccountName;

                }
            }

        }

    }


}
   


