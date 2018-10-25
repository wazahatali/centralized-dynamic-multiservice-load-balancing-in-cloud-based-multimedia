using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BALL;
using BO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    Boclass obj3 = new Boclass();
    Balclass bal_oj1 = new Balclass();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_signin_Click(object sender, EventArgs e)
    {
        obj3.Name = txt_user.Text;
        obj3.Pwd = txt_pwd.Text;
        cmd = new SqlCommand("select name,pwd from owner_regtr where name=@name and pwd=@pwd", con);
        cmd.Parameters.AddWithValue("@name", txt_user.Text);
        cmd.Parameters.AddWithValue("@pwd", txt_pwd.Text);
        da = new SqlDataAdapter(cmd);
        if (txt_user.Text != string.Empty && txt_pwd.Text != string.Empty)
        {
            bool s = bal_oj1.own_login(obj3);
            if (s)
            {
                Session["cloud_owner"] = txt_user.Text;
                Response.Redirect("Owner_page.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Invalid Password')</script>", false);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>", false);
        }
    }
}