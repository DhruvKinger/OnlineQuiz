using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ucod"] != null)
        {
            lk1.Visible = true;

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }

    protected void lk1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
}
