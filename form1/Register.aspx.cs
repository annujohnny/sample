using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace form1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {    if (password.Text == confirm.Text)
            {
                SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=annu;Persist Security Info=True;User ID=sa;Password=Suyati123");

                conn.Open();
                SqlCommand comm = new SqlCommand("insert into dbo.profile (email,password) values(@email,@password)", conn);
                comm.Parameters.AddWithValue("@email", email.Text);
                comm.Parameters.AddWithValue("@password", password.Text);
                comm.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/WebForm3.aspx");


            }
            else
                Response.Write("passwors do not match");


        }
    }
}