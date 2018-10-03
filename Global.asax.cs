using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace AutomationKit
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);



        }
        void Session_Start(object sender, EventArgs e)
        {
           
        }

        protected void Application_AcquireRequestState(Object sender, EventArgs e)
        {
            if (HttpContext.Current != null && HttpContext.Current.Session != null)
            {
                //if (Session["FirstName"] is null)
                //{
             
                //    Server.Transfer("login.aspx");
                //}


            }
        }
    }
}