using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace AutomationKit
{
    public partial class SCCM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            mySimpleInsert();
        }


        public void mySimpleLogin()
        {
            string str = System.Configuration.ConfigurationManager.ConnectionStrings["Orchestrator_NSCustomConnectionString"].ToString();
            string queryString =
                "UPDATE [Users] SET     [LastLogin] = GETDATE(), [NumLogin] = NumLogin+1  WHERE UserName =  @UserName ";

            using (SqlConnection connection =
                       new SqlConnection(str))
            {
                SqlCommand command =
                    new SqlCommand(queryString, connection);
                connection.Open();

                // Add parameter
                command.Parameters.Add("@UserName", SqlDbType.NVarChar);


                // Fill the parameter with the value retrieved

                command.Parameters["@UserName"].Value = TextBox1.Text;



                SqlDataReader reader = command.ExecuteReader();

                Label1.Text = "Hi";

                reader.Close();
            }



        }

        public void mySimpleInsert()
        {
            string str = System.Configuration.ConfigurationManager.ConnectionStrings["Orchestrator_NSCustomConnectionString"].ToString();
            string queryString = "INSERT INTO [dbo].[tblToolKitJobs]([RunbookName] ,[UserName] ,[var1] ,[var2]) VALUES ('Paul', @UserName, 'test', 'test2' )";

            using (SqlConnection connection =
                       new SqlConnection(str))
            {
                SqlCommand command =
                    new SqlCommand(queryString, connection);
                connection.Open();

                // Add parameter
                command.Parameters.Add("@UserName", SqlDbType.NVarChar);


                // Fill the parameter with the value retrieved

                command.Parameters["@UserName"].Value = TextBox1.Text;



                SqlDataReader reader = command.ExecuteReader();

                Label1.Text = "Hi";

                reader.Close();
            }
        }
    }
}