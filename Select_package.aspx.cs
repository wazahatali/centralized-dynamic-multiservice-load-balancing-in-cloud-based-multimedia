using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using BALL;

public partial class _Default : System.Web.UI.Page
{
    Boclass bo = new Boclass();
    Balclass bal = new Balclass();
    string sess_val;
    protected void Page_Load(object sender, EventArgs e)
    {
        sess_val = Session["name"].ToString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bo.Fname = sess_val;
        bo.Pkg =Convert.ToInt16(txt_cost.Text);
        string dd = drp_pkglist.SelectedValue;
        size();
        bool i = bal.pfk_info(bo);
        //if (i)
        //{

        //}
        //else
        //{
            ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script>alert('Stored successfully')</script>", false);
            Response.Redirect("Login.aspx");
        //}
    }
    protected void drp_pkglist_SelectedIndexChanged(object sender, EventArgs e)
    {
        size();
    }
    public void size()
    {
        int i = drp_pkglist.SelectedIndex;
        switch (i)
        {
            case 0:
                txt_cost.Text = "100";
                bo.Fixedsize = 1000000;
                break;
            case 1:
                txt_cost.Text = "200";
                bo.Fixedsize = 5000000;
                break;
            case 2:
                txt_cost.Text = "300";
                bo.Fixedsize = 10000000;
                break;
            case 3:
                txt_cost.Text = "700";
                bo.Fixedsize = 100000000;
                break;
            case 4:
                txt_cost.Text = "900";
                bo.Fixedsize = 100000000;
                break;
            default:
                break;
        }
        
    }
}