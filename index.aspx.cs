using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        nsskills.clsreg obj = new nsskills.clsreg();
        nsskills.clsregprp objprp = new nsskills.clsregprp();
        objprp.regeml = txteml.Text;
        objprp.regpwd = txtpwd.Text;
        objprp.regdat = DateTime.Now;
        objprp.regsts = 'U';
        try
        {
            obj.save_rec(objprp);
            Label1.Text = "Registration Successful";
        }
        catch (Exception exp)
        {
            Label1.Text = "Registration Not Successful";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        nsskills.clsreg obj = new nsskills.clsreg();
        char rol;
        Int32 cod;
        cod = obj.logincheck(txteml1.Text, txtpwd1.Text, out rol);
        txteml1.Text = string.Empty;
        if (cod == -2)
            Label2.Text = "Password Incorrect";
        else if (cod == -1)
            Label2.Text = "Email ID Incorrect";
        else
        {
            Session["ucod"] = cod;
            if (rol == 'A')
            {
                Response.Redirect("admin/frmtec.aspx");
            }
            else
            {
                Response.Redirect("frmstrtst.aspx");
            }
        }
    }
}