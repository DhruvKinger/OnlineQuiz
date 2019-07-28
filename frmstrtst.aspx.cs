using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["tcod"] = DropDownList1.SelectedValue;
        Session["lvl"] = DropDownList2.SelectedValue;
        Session["tb"] = null;
        Response.Redirect("frmtst.aspx");
    }
}