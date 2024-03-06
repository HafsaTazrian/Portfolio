using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio
{
    public partial class index : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPortfolioData("SELECT * FROM Portfolio WHERE Status = 'Latest'", rptLatestProjects);
                BindPortfolioData("SELECT * FROM Portfolio WHERE Status = 'Ongoing'", rptOngoingProjects);
            }
        }
        private void BindPortfolioData(string query, Repeater repeater)
        {
            // Assuming you have a SqlConnection named "con" and it's properly configured
            //string query = "SELECT ImagePath, AltText, Title, Description, Link FROM Portfolio";

            using (SqlConnection connection = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    try { 
                        connection.Open(); 
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.HasRows)
                        {
                            repeater.DataSource = reader;
                            repeater.DataBind();
                        }
                        reader.Close();
                    }
                    catch (Exception ex) 
                    { 
                        Console.WriteLine("An error occured while fetching portfolio data: " + ex.Message); 
                    }
                }
            }
        }
        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            
            using (SqlConnection connection = new SqlConnection(strcon))
            {
                string query = "INSERT INTO Contact_Section(FullName, EmailAddress, MobileNumber, EmailSubject, Message) " +
                               "VALUES (@FullName, @EmailAddress, @MobileNumber, @EmailSubject, @Message)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@FullName", txtFullName.Text.Trim());
                    command.Parameters.AddWithValue("@EmailAddress", txtEmailAddress.Text.Trim());
                    command.Parameters.AddWithValue("@MobileNumber", txtMobileNumber.Text.Trim());
                    command.Parameters.AddWithValue("@EmailSubject", txtEmailSubject.Text.Trim());
                    command.Parameters.AddWithValue("@Message", txtMessage.Text.Trim());

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        ClearForm();
                    }
                    catch (Exception ex)
                    {
                       
                    }
                }
            }
        }

        private void ClearForm()
        {
            txtFullName.Text = "";
            txtEmailAddress.Text = "";
            txtMobileNumber.Text = "";
            txtEmailSubject.Text = "";
            txtMessage.Text = "";
        }
    }

}