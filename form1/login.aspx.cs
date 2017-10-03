using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace form1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(useremail.Text, userpassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage
                   (useremail.Text, Persist.Checked);

            }
            else
            {
                Msg.Text = "Invalid credentials. Please try again.";
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

    }
}