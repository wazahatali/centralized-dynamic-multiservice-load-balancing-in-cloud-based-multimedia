using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BALL;
using BO;

public partial class _Default : System.Web.UI.Page
{
    Boclass obj2 = new Boclass();
    Balclass bal_obj = new Balclass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_ownreg_Click(object sender, ImageClickEventArgs e)
    {
        obj2.Name = txt_name.Text;
        obj2.Pwd = txt_pswd.Text;
        obj2.Cpwd = txt_cpswd.Text;
        obj2.Mailid = txt_mailid.Text;
        obj2.Gender1 = rbtn_gen1.SelectedValue;
        obj2.Mob = Convert.ToInt32(txt_mobno.Text);
        obj2.Store = rdbtn_store.SelectedValue;
        bool a = bal_obj.own_reg(obj2);
        if (txt_pswd.Text == txt_cpswd.Text)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Login Successful')</script>", false);
            Response.Redirect("Owner_login.aspx");
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Invalid Password')</script>", false);
        }
    }
}