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
    public partial class Group : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string pzGetGroup = DropDownList1.SelectedValue;

            // set up domain context
            PrincipalContext ctx = new PrincipalContext(ContextType.Domain);

            // find the group in question
            GroupPrincipal group = GroupPrincipal.FindByIdentity(ctx, pzGetGroup);

            // if found....
            if (group != null)
            {
                // iterate over members
                foreach (Principal p in group.GetMembers())
                {


                    // do whatever you need to do to those members
                    ComputerPrincipal theServer = p as ComputerPrincipal;
                    //UserPrincipal theUser = p as UserPrincipal;
                    string pzComp = p.SamAccountName.ToString();
                    pzComp = pzComp.Replace('$', ' ');

                    //Console.WriteLine(pzComp);
           
                    //Console.WriteLine("<br/>");
               
                   // GridView1.Columns.Add(pzComp);
                    //GridView1.DataBind();
                  //  ListView1.DataBind();
                    Response.Write(pzComp);
                //    Response.Write(".nscorp.ad.nscorp.com");
                    Response.Write("<br/>");

                    //      if (theUser != null)
                    //      {
                    //          if (theUser.IsAccountLockedOut())
                    //          {
                    //     ...
                    //}
                    //          else
                    //          {
                    //     ...
                    //}
                    //      }
                }
            }


        }

    }
}

   
       


  

