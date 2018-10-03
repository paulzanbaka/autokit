using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


namespace AutomationKit
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)


        {

            Label1.Text = System.Web.HttpContext.Current.User.Identity.Name.ToLower();
            Session["LoggedIn"] = "no";

        }
        public void  pzLogin()
        {
            string str = System.Configuration.ConfigurationManager.ConnectionStrings["Orchestrator_NSCustomConnectionString"].ToString();
            string queryString = "SELECT [UserName], [Role],[FirstName],[LastName] ,[SupportGroup],[Email],[Enabled] FROM Users  WHERE UserName =  @UserName";


            using (SqlConnection connection = new SqlConnection(str))
            {
                SqlCommand command =
                    new SqlCommand(queryString, connection);
                connection.Open();

                command.Parameters.Add("@UserName", SqlDbType.NVarChar);

                command.Parameters["@UserName"].Value = System.Web.HttpContext.Current.User.Identity.Name.ToLower();

                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                   // if (reader["UserName"] == null)
                 if (reader["UserName"].ToString() == System.Web.HttpContext.Current.User.Identity.Name.ToLower())
                    {

                        //Paul Add Sessions Here
                      Session["FirstName"] =  (string)reader["FirstName"];
                        Session["LastName"] = (string)reader["LastName"];
                        Session["Role"] = (string)reader["Role"];
                        Session["LoggedIn"] = 1;
                        //  Session["LastName"] = LastNameTextBox.Text;
                        //HttpCookie myCookie = new HttpCookie("UserSettings");
                        // myCookie["RACF"] = (string)reader["UserName"];
                        //   myCookie["Pass"] = TextBox2.Text;
                        //   View1.Visible = false;
                        // myCookie.Expires = DateTime.Now.AddDays(1d);
                        // Response.Cookies.Add(myCookie);
                        // 


                        Label2.Text = Session["Role"].ToString();
                        Label3.Text = "Logged on";
                        pzUpdate();

                        //   Response.Redirect("Default.aspx");

                    }

                    //else if (reader["UserName"].ToString() != System.Web.HttpContext.Current.User.Identity.Name.ToLower())
                    //    {
                    //    Label1.Text = "uh OH 1";

                    //    Label2.Text = "Oh OH";
                    //    Label3.Text = "Your UserName and/or Password are Incorrect";
                    //   // Response.Redirect("Default.aspx");
                    //}

                    else 
                    {
                        Label1.Text = "uh OH";

                        Label2.Text = "Oh OH";
                        Label3.Text = "Your UserName and/or Password are Incorrect";
                        // Response.Redirect("Default.aspx");
                    }
                    //  sendPassMail("paul.zanbaka@nscorp.com", pass);


                }

                reader.Close();
            }

           
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //  pzUpdate();
            pzLogin();

        }

    
        void pzUpdate()
            {

            
                string str1 = System.Configuration.ConfigurationManager.ConnectionStrings["Orchestrator_NSCustomConnectionString"].ToString();
                string queryString1 =
                    "UPDATE [Users] SET     [LastLogin] = GETDATE(), [NumLogin] = NumLogin+1  WHERE UserName =  @UserName";

                using (SqlConnection connection =
                           new SqlConnection(str1))
                {
                    SqlCommand command =
                        new SqlCommand(queryString1, connection);
                    connection.Open();

                    // Add parameter
                    command.Parameters.Add("@UserName", SqlDbType.NVarChar);


                    // Fill the parameter with the value retrieved

                    command.Parameters["@UserName"].Value = Label1.Text;



                    SqlDataReader reader = command.ExecuteReader();

                    Label3.Text = "Updated";

                    reader.Close();
                Server.Transfer("Default.aspx");
                }



            }

            public void mySimpleInsert()
            {
                string str = System.Configuration.ConfigurationManager.ConnectionStrings["Orchestrator_NSCustomConnectionString"].ToString();
                string queryString = "INSERT INTO [dbo].[tblToolKitJobs]([RunbookName] ,[UserName] ,[var1] ,[var2]) VALUES ('Paul', @UserName, 'test', test2)";

                using (SqlConnection connection =
                           new SqlConnection(str))
                {
                    SqlCommand command =
                        new SqlCommand(queryString, connection);
                    connection.Open();

                    // Add parameter
                    command.Parameters.Add("@UserName", SqlDbType.NVarChar);


                    // Fill the parameter with the value retrieved

                    // command.Parameters["@UserName"].Value = TextBox1.Text;



                    SqlDataReader reader = command.ExecuteReader();

                    Label1.Text = "Record Inserted";

                    reader.Close();
                }
            }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Clear();
            Label1.Text = "Bye Bye";
        }
    }
    }
