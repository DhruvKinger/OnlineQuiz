using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack==false)
        {
            if (Session["ucod"] == null)
                Response.Redirect("index.aspx");
           else if (Session["tcod"] == null)
                Response.Redirect("frmstrtst.aspx");
            else
            {
                Int32 a =Convert.ToInt32(Session["tcod"]);
                Int32 b = Convert.ToChar(Session["lvl"]);
                DataTable tb = new DataTable("tb1");
                tb.Columns.Add(new DataColumn("qstcod", Type.GetType("System.Int32")));
                tb.Columns.Add(new DataColumn("qstdsc", Type.GetType("System.String")));
                tb.Columns.Add(new DataColumn("crtopt", Type.GetType("System.String")));
                tb.Columns.Add(new DataColumn("yoropt", Type.GetType("System.String")));
                nsskills.clsqst obj = new nsskills.clsqst();
                List<nsskills.clsqstprp> k = obj.dspqstbyteclvl(Convert.ToInt32(Session["tcod"]), Convert.ToChar(Session["lvl"]));
                Random rnd = new Random();
                int idx, j;
                for(int i=1;i<=3;i++)
                {
                    idx = rnd.Next(0, k.Count);
                    for(j=0;j<tb.Rows.Count;j++)
                    {
                        if (Convert.ToInt32(tb.Rows[j][0]) == k[idx].qstcod)
                            break;
                    }
                    if(j<tb.Rows.Count)
                    {
                        i--;
                        continue;
                    }
                    DataRow r = tb.NewRow();
                    r[0] = k[idx].qstcod;
                    r[1] = k[idx].qstdsc;
                    tb.Rows.Add(r);
                }
                GridView1.DataSource = tb;
                GridView1.DataBind();
                Label1.Text = "5";
                Session["tb"] = tb;
            }
        }
    }
    public List<nsskills.clsansprp> getans(Int32 qcod)
    {
        nsskills.clsans obj = new nsskills.clsans();
        List<nsskills.clsansprp> k = obj.dsp_rec(qcod);
        return k;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        abc();
        //Int32 tot = 0;
        //DataTable tb = (DataTable)(Session["tb"]);
        //for(Int32 i=0;i<GridView1.Rows.Count;i++)
        //{
        //    RadioButtonList r = (RadioButtonList)GridView1.Rows[i].FindControl("r1");
        //    if (r.SelectedValue == "T")
        //        tot++;
        //    tb.Rows[i][3] = r.SelectedItem;
        //    tb.Rows[i][2] = r.Items.FindByValue("T").Text;
        //}
        //Response.Redirect("frmres.aspx?tot=" + tot);
    }
    private void abc()
    {
        Int32 tot = 0;
        DataTable tb = (DataTable)(Session["tb"]);
        for (Int32 i = 0; i < GridView1.Rows.Count; i++)
        {
            RadioButtonList r = (RadioButtonList)GridView1.Rows[i].FindControl("r1");
            if (r.SelectedValue == "T")
                tot++;
            tb.Rows[i][3] = r.SelectedItem;
            tb.Rows[i][2] = r.Items.FindByValue("T").Text;
        }
        Response.Redirect("frmres.aspx?tot=" + tot);
    }
    protected void Unnamed1_Tick(object sender, EventArgs e)
    {
        Int32 a = Convert.ToInt32(Label1.Text);
        a = a - 1;
       
        if(a==0)
        {
            abc();
        }
        Label1.Text = Convert.ToString(a);
    }
}